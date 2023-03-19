// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// NavigationRail shows if the screen width is greater or equal to
// narrowScreenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const double mediumWidthBreakpoint = 1000;
const double largeWidthBreakpoint = 1500;

const double transitionLength = 500;

enum ColorSeed {
  baseColor('Default', Colors.white),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink),
  red('Purple', Color(0xff6750a4));

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

enum ScreenSelected {
  ds(0),
  ps(1),
  cr(2),
  sc(3),
  rc(4);

  const ScreenSelected(this.value);
  final int value;
}

enum CategoryNames {
  ds('Data Sufficiency'),
  ps('Problem Solving'),
  cr('Critical Reasoning'),
  sc('Sentence Correction'),
  rc('Reading Comprehension');

  const CategoryNames(this.value);
  final String value;
}
