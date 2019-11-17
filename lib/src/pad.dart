import 'package:flutter/material.dart';

/// Directional padding
class Pad extends StatelessWidget {
  /// Provide a direction
  const Pad(
      {this.left = 0.0,
      this.top = 0.0,
      this.right = 0.0,
      this.bottom = 0.0,
      this.child});

  /// Left padding
  final double left;

  /// Top padding
  final double top;

  /// Right padding
  final double right;

  /// Bottom padding
  final double bottom;

  /// Optional child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom));
        break;
      case false:
        p = Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: child);
    }
    return p;
  }
}

/// A padding from LTRB
class PadLTRB extends StatelessWidget {
  /// Provide LTRB values
  const PadLTRB(this.left, this.top, this.right, this.bottom, {this.child});

  /// Left padding
  final double left;

  /// Top padding
  final double top;

  /// Right padding
  final double right;

  /// Bottom padding
  final double bottom;

  /// Optional child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom));
        break;
      case false:
        p = Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: child);
    }
    return p;
  }
}

/// Vertical padding
class PadVertical extends StatelessWidget {
  /// Provide a [padding]
  const PadVertical(this.padding, {this.child}) : assert(padding != null);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.symmetric(vertical: padding));
        break;
      case false:
        p = Padding(
            padding: EdgeInsets.symmetric(vertical: padding), child: child);
    }
    return p;
  }
}

/// Horizontal padding
class PadHorizontal extends StatelessWidget {
  /// Provide a [padding]
  const PadHorizontal(this.padding, {this.child}) : assert(padding != null);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.symmetric(horizontal: padding));
        break;
      case false:
        p = Padding(
            padding: EdgeInsets.symmetric(horizontal: padding), child: child);
    }
    return p;
  }
}

/// All directions padding
class PadAll extends StatelessWidget {
  /// Provide a [padding]
  const PadAll(this.padding, {this.child}) : assert(padding != null);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.all(padding));
        break;
      case false:
        p = Padding(padding: EdgeInsets.all(padding), child: child);
    }
    return p;
  }
}
