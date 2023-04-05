import 'dart:math';

import 'package:app/consts.dart';
import 'package:app/services/providers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({
    super.key,
    required this.code,
  });

  final String code;

  @override
  Widget build(BuildContext context, ref) {
    final provider = ref.watch(exchangeRateItemProvider(code: code));

    return provider.when(
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (error, stack) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(error.toString()),
        ),
      ),
      data: (exchangeRate) => Scaffold(
        appBar: AppBar(title: Text(code)),
        body: RefreshIndicator(
          onRefresh: () =>
              ref.refresh(exchangeRateItemProvider(code: code).future),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - kToolbarHeight,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      LineChart(
                        LineChartData(
                          lineTouchData: LineTouchData(
                            touchTooltipData: LineTouchTooltipData(
                              tooltipBgColor: Colors.blueGrey,
                              fitInsideVertically: true,
                              fitInsideHorizontally: true,
                              getTooltipItems:
                                  (List<LineBarSpot> touchedBarSpots) {
                                return touchedBarSpots.map((barSpot) {
                                  final flSpot = barSpot;
                                  return LineTooltipItem(
                                    flSpot.y.toStringAsFixed(
                                        Consts.defaultDecimalDigits),
                                    Theme.of(context).textTheme.bodyMedium!,
                                  );
                                }).toList();
                              },
                            ),
                          ),
                          titlesData: FlTitlesData(
                            show: false,
                          ),
                          lineBarsData: [
                            LineChartBarData(
                              spots: List.generate(
                                exchangeRate.rates.length,
                                (index) => FlSpot(
                                  index.toDouble(),
                                  exchangeRate.rates[index],
                                ),
                              ),
                            ),
                          ],
                        ),
                        swapAnimationDuration: Consts.defaultAnimTime,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          exchangeRate.rates
                              .reduce(max)
                              .toStringAsFixed(Consts.defaultDecimalDigits),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Text(
                          exchangeRate.rates
                              .reduce(min)
                              .toStringAsFixed(Consts.defaultDecimalDigits),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  exchangeRate.description,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
