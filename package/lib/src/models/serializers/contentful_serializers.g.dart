// GENERATED CODE - DO NOT MODIFY BY HAND

part of contentful_serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$contentfulSerializers = (new Serializers().toBuilder()
      ..add(AllLocales.serializer)
      ..add(Asset.serializer)
      ..add(AssetFields.serializer)
      ..add(AssetFile.serializer)
      ..add(AssetFileDetails.serializer)
      ..add(AssetFileDetailsImage.serializer)
      ..add(ContentType.serializer)
      ..add(ContentTypeResponse.serializer)
      ..add(Endpoint.serializer)
      ..add(EntryList.serializer)
      ..add(Field.serializer)
      ..add(FieldType.serializer)
      ..add(Link.serializer)
      ..add(Locale.serializer)
      ..add(Location.serializer)
      ..add(Space.serializer)
      ..add(SystemFields.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ContentType)]),
          () => new ListBuilder<ContentType>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => new ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Locale)]),
          () => new ListBuilder<Locale>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Locale)]),
          () => new ListBuilder<Locale>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
