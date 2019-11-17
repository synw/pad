# Pad

Quick padding for Flutter with a short syntax. Instead of:

   ```dart
   const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Foo")
   )
   ```

You can use:

   ```dart
   const PadAll(10.0, child: Text("Foo"))
   ```

## Usage

### Custom padding

   ```dart
   const Pad(
      bottom: 10.0,
      top: 10.0,
      left: 10.0,
      right: 10.0,
      child: Text("Foo")
   )
   ```

All parameters are optional

### Pad vertical

   ```dart
   const PadVertical(10.0, child: Text("Foo"))
   ```

### Pad horizontal

   ```dart
   const PadHorizontal(10.0, child: Text("Foo"))
   ```

### Pad all

   ```dart
   const PadAll(10.0, child: Text("Foo"))
   ```

### Pad from LTRB

   ```dart
   const PadLTRB(
      10.0,
      15.0,
      10.0,
      15.0,
      child: Text("Foo")
   )
   ```