1. Who controls the ledger canister? 
> canister with id `r7inp-6aaaa-aaaaa-aaabq-cai`

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  
> subnet id `pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe`; 
> 
> 16 nodes
>
> ref: 
>
> https://dashboard.internetcomputer.org/canister/mwrha-maaaa-aaaab-qabqq-cai
>
> https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe

3. I have a neuron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
> 16.86 == 10 * ( ((2-1.06) / (8*12-6) * (4*12 - 6)) + 1.06 ) * ((1.25 - 1) / 2 + 1)
> 
> ref: https://support.dfinity.org/hc/en-us/articles/4404284534420-What-is-voting-power-

4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
> missing
> `import Nat "mo:base/Nat";`

5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
> variable `language` should be of type `[Text]` upon declaration, and also function `show_languages` should have return type of `[Text]` accordingly.

6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
> missing
> `import Array "mo:base/Array";`