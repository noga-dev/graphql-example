import 'package:app/consts.dart';
import 'package:app/services/providers.dart';
import 'package:app/views/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstScreen extends ConsumerWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exchange Rates')),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(exchangeRateListProvider().future),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: ref.watch(exchangeRateListProvider()).when(
                  loading: () => const Center(
                    child: LinearProgressIndicator(),
                  ),
                  error: (error, stack) => ErrorWidget.withDetails(
                    message: error.toString(),
                  ),
                  data: (resultData) => DataTable(
                    showCheckboxColumn: false,
                    columns: const [
                      DataColumn(label: Text('Currency')),
                      DataColumn(label: Text('Rate')),
                      DataColumn(label: Text('Change')),
                    ],
                    rows: resultData.exchangeRates
                        .map((e) => DataRow(
                              cells: [
                                DataCell(Text(e.code)),
                                DataCell(
                                  Text(
                                    e.rates.first.toStringAsFixed(
                                      Consts.defaultDecimalDigits,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  e.rates.last > e.rates[e.rates.length - 2]
                                      ? const Icon(
                                          Icons.arrow_upward,
                                          color: Colors.green,
                                        )
                                      : const Icon(
                                          Icons.arrow_downward,
                                          color: Colors.red,
                                        ),
                                ),
                              ],
                              onSelectChanged: (value) =>
                                  Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SecondScreen(code: e.code),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
