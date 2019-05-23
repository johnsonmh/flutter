// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gallery/demo/crane/theme.dart';

import 'backdrop.dart';
import 'eat_form.dart';
import 'fly_form.dart';
import 'sleep_form.dart';

class CraneDemo extends StatelessWidget {
  static const String routeName = '/crane';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: kCraneTheme,
      child: Backdrop(
        frontLayer: Container(),
        backLayer: <Widget> [
          FlyForm(),
          SleepForm(),
          EatForm(),
        ],
        frontTitle: Text('CRANE'),
        backTitle: Text('MENU'),
      ),
    );
  }
}