///
//  Generated code. Do not modify.
//  source: tweet.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tweet.pb.dart' as $0;
export 'tweet.pb.dart';

class GetTweetsClient extends $grpc.Client {
  static final _$searchTweets = $grpc.ClientMethod<$0.SearchTerm, $0.Tweets>(
      '/GetTweets/SearchTweets',
      ($0.SearchTerm value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Tweets.fromBuffer(value));
  static final _$searchATweet = $grpc.ClientMethod<$0.SearchTerm, $0.Tweet>(
      '/GetTweets/SearchATweet',
      ($0.SearchTerm value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Tweet.fromBuffer(value));

  GetTweetsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Tweets> searchTweets($0.SearchTerm request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchTweets, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Tweet> searchATweet($0.SearchTerm request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchATweet, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class GetTweetsServiceBase extends $grpc.Service {
  $core.String get $name => 'GetTweets';

  GetTweetsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SearchTerm, $0.Tweets>(
        'SearchTweets',
        searchTweets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchTerm.fromBuffer(value),
        ($0.Tweets value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchTerm, $0.Tweet>(
        'SearchATweet',
        searchATweet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchTerm.fromBuffer(value),
        ($0.Tweet value) => value.writeToBuffer()));
  }

  $async.Future<$0.Tweets> searchTweets_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchTerm> request) async {
    return searchTweets(call, await request);
  }

  $async.Future<$0.Tweet> searchATweet_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchTerm> request) async {
    return searchATweet(call, await request);
  }

  $async.Future<$0.Tweets> searchTweets(
      $grpc.ServiceCall call, $0.SearchTerm request);
  $async.Future<$0.Tweet> searchATweet(
      $grpc.ServiceCall call, $0.SearchTerm request);
}
