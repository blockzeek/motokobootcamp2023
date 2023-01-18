1. How much is the current memory capacity of a canister? 
> 48GiB

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
> variable `counter` with keyword `let` is immutable.

3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
> variable `message` with type `Text` cannot be instatiated or automatically converted to value `0`( type `int`(?) ); probably need to instantiate the variable with `Text` type value such as `"0"`.

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.
> False.
