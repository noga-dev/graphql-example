import 'dart:math';

import 'package:app/models/exchange_rate_model.dart';
import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [])
class _GQLClient extends _$GQLClient {
  @override
  GraphQLClient build() => GraphQLClient(
        cache: GraphQLCache(),
        link: HttpLink(
          'http://localhost:4000/graphql',
        ),
      );
}

@Riverpod(dependencies: [_GQLClient])
Future<ExchangeRateListModel> exchangeRateList(
  ExchangeRateListRef ref, {
  historyLength = 99,
}) async {
  final result = await ref.watch(_gQLClientProvider).query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql('''
              query {
                exchangeRates (historyLength: $historyLength){
                  code:code,
                  rates:rates,
                }
              }
            '''),
        ),
      );

  final parsed = ExchangeRateListModel.fromJson(result.data!);

  return Future.delayed(
    Duration(milliseconds: 200 + Random().nextInt(2400)),
    () => Future.value(parsed),
  );
}

@Riverpod(dependencies: [_GQLClient])
Future<ExchangeRateItemModel> exchangeRateItem(
  ExchangeRateItemRef ref, {
  required String code,
  int historyLength = 99,
}) async {
  final result = await ref.watch(_gQLClientProvider).query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql('''
              query {
                exchangeRate (code: "$code", historyLength: $historyLength){
                  code:code,
                  description:description,
                  rates:rates,
                }
              }
            '''),
        ),
      );

  final parsed = ExchangeRateItemModel.fromJson(result.data!['exchangeRate']);

  ref.keepAlive();

  return Future.delayed(
    Duration(milliseconds: 160 + Random().nextInt(2240)),
    () => Future.value(parsed),
  );
}
