/// Configuration for using `package:build`-compatible build systems.
///
/// This library is **not** intended to be imported by typical end-users unless
/// you are creating a custom compilation pipeline.
///
/// See [package:build_runner](https://pub.dartlang.org/packages/build_runner)
/// for more information.
///
library rosetta_generator;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/generator.dart';

Builder rosettaStoneBuilder(BuilderOptions options) => SharedPartBuilder(
      const [
        RosettaStoneGenerator(),
      ],
      'rosetta',
    );
