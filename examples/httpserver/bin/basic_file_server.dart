// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// A server built using the http_server package that serves the same file for
/// all requests.
/// Visit http://localhost:4046 into your browser.
// #docregion
import 'dart:io';

import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

const port = 4046;

Future<void> main() async {
  var handler = createStaticHandler('.');

  await io.serve(handler, InternetAddress.loopbackIPv4, port);
}
