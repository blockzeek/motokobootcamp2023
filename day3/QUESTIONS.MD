1. True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.
> True, by using the root subnet's public key, and the verifiable document held in the root subnet, any single subnet's public key (key for threshhold signature?) can be found accordingly and be used to verify responses coming from that subnet.
> 
> ref:
>
> https://medium.com/dfinity/how-internet-computer-responses-are-certified-as-authentic-2ff1bb1ea659

2. True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.
?
> False(?). The query calls still go through the boundary node but not through consensus.

3. True or False: I can create a certified variable that will certify the response of the following actor:
```motoko
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}
```
> False, since it's not a query call; certified variables are used for handling potential security issues for query calls that interacts with only one node but not a subnet of nodes.
