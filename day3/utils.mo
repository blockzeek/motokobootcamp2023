import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

module {
  // 1. In your file called `utils.mo`: create a function called `second_maximum` that takes an array [Int] of integers and returns the second largest number in the array.
  // ```motoko
  // second_maximum(array : [Int]) ->  Int;
  // ```
  func second_maximum(array : [Int]) : Int {
    // TODO: sanity check on array length

    var indexLargest : Nat = 0;
    var indexSecondLargest : Nat = 0;

    if (array[0] >= array[1]) {
      indexSecondLargest := 1;
    } else {
      indexSecondLargest := 0;
    };

    for (index : Nat in array.keys()) {
      if (index != 0 and index != 1) {
        if (array[index] >= array[indexLargest]) {
          indexSecondLargest := indexLargest;
          indexLargest := index;
        } else if (array[index] > array[indexSecondLargest]) {
          indexSecondLargest := index;
        };
      };
    };

    return array[indexSecondLargest];
  };

  // 2. In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
  // ```motoko
  // remove_even(array : [Nat]) -> [Nat];
  // ```
  func remove_even(array : [Nat]) : [Nat] {
    return Array.filter<Nat>(array, func x = x % 2 != 0);
  };

  // 3. In your file called `utils.mo`:  write a function `drop` <T> that takes 2 parameters: an array [T] and a **Nat** n. This function will drop the n first elements of the array and returns the remainder.
  // > ⛔️ Do not use a loop.
  // ```motoko
  // drop<T> : (xs : [T], n : Nat) -> [T]
  // ```
  func drop<T>(xs : [T], n : Nat) : [T] {
    var buffer = Buffer.fromArray<T>(xs);
    buffer.filterEntries(func(index, _) = index > n);
    return Buffer.toArray(buffer);
  };
};
