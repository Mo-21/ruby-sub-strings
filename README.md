## Ruby Sub Strings

This program looks for similar words in an array of words (dictionary). It returns a hash with similar matches. 

## Example
```
Example 1

> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
```
```
Example 2

substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```