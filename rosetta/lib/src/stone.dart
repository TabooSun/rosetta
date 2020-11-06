import 'grouping.dart';

/// An annotation that generates code for translation Jsons
/// located in the directory described in [Stone.path] parameter.
class Stone {
  /// Translation files' directory path. The translation files
  /// should be named according to the [Locale.languageCode] of
  /// the represented [Locale].
  /// Must not be [null].
  final String path;

  /// Optional. Indicates which package bundles the referenced
  /// JSON files.
  ///
  /// In multi-package Flutter projects, if you declare a [Stone]
  /// annotated class, which uses JSON assets from a package other
  /// than the root package, you must declare the resource's host
  /// package or the Localization library will try to load your
  /// JSON assets from the root bundle.
  final String package;

  /// Optional. Describes how the keys should be split up to create
  /// sub-keys. The configuration is done using the [Grouping] class.
  ///
  /// Keys can be split into multiple sub-keys to create a tree-like
  /// variable structure in order to group resources together.
  ///
  /// No grouping will be applied if [null].
  ///
  /// The default [Grouping.separator] String is '.' but
  /// different ones can be declared.
  final Grouping grouping;

  /// Create an annotation that will generate the Helper and
  /// Delegate classes for the translations located at [path].
  const Stone({
    this.path,
    this.package,
    this.grouping,
  }) : assert(path != null);
}
