import 'package:flutter/material.dart';
import 'package:pad/pad.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Pad', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: Column(children: <Widget>[
      const PadLeft(10, child: Text("Left")),
      const PadRight(10, child: Text("Right")),
      const PadTop(10, child: Text("Top")),
      const PadBottom(10, child: Text("Bottom")),
      const PadLeft(10, key: ObjectKey(1)),
      const PadRight(10, key: ObjectKey(2)),
      const PadTop(10, key: ObjectKey(3)),
      const PadBottom(10, key: ObjectKey(4)),
      const Pad(left: 1, right: 1, top: 1, bottom: 1, child: Text("P")),
      const Pad(left: 1, key: ObjectKey(5)),
      const PadVertical(1, child: Text("PV")),
      const PadVertical(1, key: ObjectKey(6)),
      const PadHorizontal(1, child: Text("PH")),
      const PadHorizontal(1, key: ObjectKey(7)),
      const PadAll(1, child: Text("PA")),
      const PadAll(1, key: ObjectKey(8)),
      const PadLTRB(1, 1, 1, 1, child: Text("LT")),
      const PadLTRB(1, 1, 1, 1, key: ObjectKey(9)),
    ]))));

    expect(find.byKey(const ObjectKey(1)), findsOneWidget);
    expect(find.byKey(const ObjectKey(2)), findsOneWidget);
    expect(find.byKey(const ObjectKey(3)), findsOneWidget);
    expect(find.byKey(const ObjectKey(4)), findsOneWidget);
    expect(find.byKey(const ObjectKey(5)), findsOneWidget);
    expect(find.byKey(const ObjectKey(6)), findsOneWidget);
    expect(find.byKey(const ObjectKey(7)), findsOneWidget);
    expect(find.byKey(const ObjectKey(8)), findsOneWidget);
    expect(find.byKey(const ObjectKey(9)), findsOneWidget);
    expect(find.text('Left'), findsOneWidget);
    expect(find.text('Right'), findsOneWidget);
    expect(find.text('Top'), findsOneWidget);
    expect(find.text('Bottom'), findsOneWidget);
    expect(find.text('P'), findsOneWidget);
    expect(find.text('PV'), findsOneWidget);
    expect(find.text('PH'), findsOneWidget);
    expect(find.text('PA'), findsOneWidget);
    expect(find.text('LT'), findsOneWidget);
  });

  testWidgets('Errors', (WidgetTester tester) async {
    try {
      await tester.pumpWidget(PadBottom(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadTop(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadLeft(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadRight(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadVertical(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadHorizontal(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadAll(null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadLTRB(null, 1, 1, 1));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadLTRB(1, null, 1, 1));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadLTRB(1, 1, null, 1));
    } catch (e) {
      expect(e is AssertionError, true);
    }
    try {
      await tester.pumpWidget(PadLTRB(1, 1, 1, null));
    } catch (e) {
      expect(e is AssertionError, true);
    }
  });
}
