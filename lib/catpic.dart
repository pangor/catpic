// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Widgets with pictures of kittens. */
library catpic;

import 'dart:html';

import 'package:kittens/kittens.dart';
import 'package:widget/widget.dart';

class Catpic extends Widget {
  final String _url;

  Catpic(int kitten)
  : _url = getKitten(kitten % numKittens);

  Element render() => new Element.html('<img src="$_url"></img>');
}
