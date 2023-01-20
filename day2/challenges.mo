import Text "mo:base/Text";
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
  // 1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
  // ```
  // average_array(array : [Int]) -> async Int.
  // ```
  public func average_array(array : [Int]) : async Int {
    if (array.size() == 0) {
      return 0;
    };

    var sum : Int = 0;

    for (value : Int in array.vals()) {
      sum := sum + value;
    };

    return sum / array.size();
  };

  // 2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
  // ```
  // count_character(t : Text, c : Char) -> async Nat
  // ```
  public func count_character(t : Text, c : Char) : async Nat {
    var occurrence : Nat = 0;

    for (char : Char in t.chars()) {
      if (char == c) {
        occurrence := occurrence + 1;
      };
    };

    return occurrence;
  };

  // 3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
  // ```
  // factorial(n : Nat) ->  async Nat
  // ```
  public func factorial(n : Nat) : async Nat {
    var result : Nat = 1;
    var current : Nat = 2;

    while (current <= n) {
      result := result * current;
      current := current + 1;
    };

    return result;
  };

  // 4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.
  // ```
  // number_of_words(t : Text) -> async Nat
  // ```
  public func number_of_words(t : Text) : async Nat {
    if (t.size() == 0) {
      return 0;
    };

    var num = 0;

    for (word : Text in Text.split(t, #text(" "))) {
      num := num + 1;
    };

    return num;
  };

  // 5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  // ```
  // find_duplicates(a : [Nat]) -> async [Nat]
  // ```
  public func find_duplicates(a : [Nat]) : async [Nat] {
    var result : [Nat] = [];
    var uniques : [Nat] = [];

    for (nat in a.vals()) {
      if ((Array.find<Nat>(uniques, func x = x == nat) != null)) {
        result := Array.append<Nat>(result, [nat]);
      } else {
        uniques := Array.append<Nat>(uniques, [nat]);
      };
    };

    return result;
  };

  // 6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
  // ```
  // convert_to_binary(n : Nat) -> async Text
  // ```

  public func convert_to_binary(n : Nat) : async Text {
    var result : Text = "";
    var current : Nat = n;

    while (current > 0) {
      result := Nat.toText(current % 2) # result;
      current := current / 2;
    };

    return result;
  };
};
