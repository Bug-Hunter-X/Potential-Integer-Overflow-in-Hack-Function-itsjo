```hack
function foo(x: int): int {
  $maxInt = 2147483647;
  $result = x + 1;
  if ($result > $maxInt) {
    return $maxInt; // Handle overflow
  } else {
    return $result;
  }
}

function bar(x: int): int {
  $maxInt = 2147483647;
  $result = foo(x) + 1;
  if ($result > $maxInt) {
    return $maxInt; // Handle overflow
  } else {
    return $result;
  }
}

function main(): void {
  echo bar(5);
  echo bar(2147483646);
}
```