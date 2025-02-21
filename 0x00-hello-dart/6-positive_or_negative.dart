void main(List<String> args) {
  var n = int.parse(args[0]);
  if (n > 0) {
    print('$n is positive');
  } else if (n < 0) {
    print('$n is negative');
  } else {
    print('$n is zero');
  }
}
