///
//  Generated code. Do not modify.
//  source: tweet.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Tweet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tweet', createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'tweet')
    ..a<$core.int>(3, 'likes', $pb.PbFieldType.O3)
    ..aOS(4, 'location')
    ..hasRequiredFields = false
  ;

  Tweet._() : super();
  factory Tweet() => create();
  factory Tweet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tweet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tweet clone() => Tweet()..mergeFromMessage(this);
  Tweet copyWith(void Function(Tweet) updates) => super.copyWith((message) => updates(message as Tweet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tweet create() => Tweet._();
  Tweet createEmptyInstance() => create();
  static $pb.PbList<Tweet> createRepeated() => $pb.PbList<Tweet>();
  @$core.pragma('dart2js:noInline')
  static Tweet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tweet>(create);
  static Tweet _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tweet => $_getSZ(1);
  @$pb.TagNumber(2)
  set tweet($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTweet() => $_has(1);
  @$pb.TagNumber(2)
  void clearTweet() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get likes => $_getIZ(2);
  @$pb.TagNumber(3)
  set likes($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLikes() => $_has(2);
  @$pb.TagNumber(3)
  void clearLikes() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get location => $_getSZ(3);
  @$pb.TagNumber(4)
  set location($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
}

class SearchTerm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchTerm', createEmptyInstance: create)
    ..aOS(1, 'searchterm')
    ..hasRequiredFields = false
  ;

  SearchTerm._() : super();
  factory SearchTerm() => create();
  factory SearchTerm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTerm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchTerm clone() => SearchTerm()..mergeFromMessage(this);
  SearchTerm copyWith(void Function(SearchTerm) updates) => super.copyWith((message) => updates(message as SearchTerm));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTerm create() => SearchTerm._();
  SearchTerm createEmptyInstance() => create();
  static $pb.PbList<SearchTerm> createRepeated() => $pb.PbList<SearchTerm>();
  @$core.pragma('dart2js:noInline')
  static SearchTerm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTerm>(create);
  static SearchTerm _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get searchterm => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchterm($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchterm() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchterm() => clearField(1);
}

class Tweets extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tweets', createEmptyInstance: create)
    ..pc<Tweet>(1, 'tweets', $pb.PbFieldType.PM, subBuilder: Tweet.create)
    ..hasRequiredFields = false
  ;

  Tweets._() : super();
  factory Tweets() => create();
  factory Tweets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tweets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tweets clone() => Tweets()..mergeFromMessage(this);
  Tweets copyWith(void Function(Tweets) updates) => super.copyWith((message) => updates(message as Tweets));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tweets create() => Tweets._();
  Tweets createEmptyInstance() => create();
  static $pb.PbList<Tweets> createRepeated() => $pb.PbList<Tweets>();
  @$core.pragma('dart2js:noInline')
  static Tweets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tweets>(create);
  static Tweets _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Tweet> get tweets => $_getList(0);
}

