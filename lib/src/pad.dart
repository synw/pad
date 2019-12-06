import 'package:flutter/material.dart';

/// Directional padding
class Pad extends StatelessWidget {
  /// Provide a direction
  const Pad(
      {Key key,
      this.left = 0.0,
      this.top = 0.0,
      this.right = 0.0,
      this.bottom = 0.0,
      this.child})
      : super(key: key);

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
  const PadLTRB(this.left, this.top, this.right, this.bottom,
      {Key key, this.child})
      : assert(left != null),
        assert(right != null),
        assert(top != null),
        assert(bottom != null),
        super(key: key);

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

/// Top padding
class PadTop extends StatelessWidget {
  /// Provide a [padding]
  const PadTop(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.only(top: padding));
        break;
      case false:
        p = Padding(padding: EdgeInsets.only(top: padding), child: child);
    }
    return p;
  }
}

/// Bottom padding
class PadBottom extends StatelessWidget {
  /// Provide a [padding]
  const PadBottom(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.only(bottom: padding));
        break;
      case false:
        p = Padding(padding: EdgeInsets.only(bottom: padding), child: child);
    }
    return p;
  }
}

/// Right padding
class PadRight extends StatelessWidget {
  /// Provide a [padding]
  const PadRight(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.only(right: padding));
        break;
      case false:
        p = Padding(padding: EdgeInsets.only(right: padding), child: child);
    }
    return p;
  }
}

/// Left padding
class PadLeft extends StatelessWidget {
  /// Provide a [padding]
  const PadLeft(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

  /// The padding value
  final double padding;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Padding p;
    switch (child == null) {
      case true:
        p = Padding(padding: EdgeInsets.only(left: padding));
        break;
      case false:
        p = Padding(padding: EdgeInsets.only(left: padding), child: child);
    }
    return p;
  }
}

/// Vertical padding
class PadVertical extends StatelessWidget {
  /// Provide a [padding]
  const PadVertical(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

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
  const PadHorizontal(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

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
  const PadAll(this.padding, {Key key, this.child})
      : assert(padding != null),
        super(key: key);

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
