// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Widgets with pictures of kittens. */
library catpic;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:kittens/kittens.dart';

class Catpic extends WebComponent {
  int _kitten;
  
  void set kitten(String number) {
    _kitten = int.parse(number);
    attributes['src'] = getKitten(_kitten % numKittens);
  }
  
  String get kitten => _kitten.toString();
}
