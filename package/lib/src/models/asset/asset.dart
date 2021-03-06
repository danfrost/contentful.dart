library asset;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset.g.dart';

abstract class Asset implements Built<Asset, AssetBuilder> {
  static Serializer<Asset> get serializer => _$assetSerializer;

  factory Asset([void Function(AssetBuilder) updates]) = _$Asset;

  Asset._();

  AssetFields get fields;

  SystemFields get sys;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Asset.serializer, this));
  }

  static Asset fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Asset.serializer, json.decode(jsonString));
  }
}
