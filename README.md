# Eth-Chop

A solidity implementation of a company chop.

# Design thoughts

While a traditional chop may be a unique item, it is conceivable that a chop holder may want to share their control with one or more others, or simply enable multiple controlled addresses to have access. This redundancy makes it less likely that the holder can lose access through loss of only one of these private keys, a critical issue if the chop is to be considered irreplacable. Irreplacable contracts can cite this chop as a list of approved parties acting on behalf of the company.
Initially I had intended to bake in additional functionality, but realized it would be more flexible to use the chop only as an intended whitelist, granting authority through recognition of what it represents to the people who control it.
Compatable smart contracts should cite the chop contract by address and use the isChopHolder function to permission access to the rights associated with it.

# Implementation
A simple whitelist provides access control, and exposes the ability to add or remove the chop from addresses. The isChopHolder() function, analogous to the isOwner() function, provides the ability for external contracts to query the whitelist.

# Not covered
* Granting any restricted access to the chop, such as for specific functions or for certain periods of time.
* An abstract interface for compatible smart contracts.
* Token standard fields. This standard need not be considered a token, and unless it should be exchangable freely, probably shouldn't be.

