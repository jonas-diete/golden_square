# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark. (.!?)_

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

result = verify_grammar(text)
text: a string (e.g. "I live in England.")
result: boolean (true or false)

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

verify_grammar("I live in England.") => true
verify_grammar("There is a car!") => true
verify_grammar("Where do you live?") => true
verify_grammar("i live in England.") => false
verify_grammar("there is a car!") => false
verify_grammar("where do you live?") => false
verify_grammar("I live in England-") => false
verify_grammar("There is a car") => false
verify_grammar("Where do you live()") => false

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
