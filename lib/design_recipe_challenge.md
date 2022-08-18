# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO_

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

result = includes_todo(text)
text: a string (e.g. "#TODO Paint my living room.")
result: boolean (true or false)

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

includes_todo("#TODO Paint my living room.") => true
includes_todo("Paint my living room.") => false
includes_todo("Paint #TODO my living room.") => true
includes_todo("Paint my#TODOliving room.") => true
includes_todo("Paint my living room #TODO") => true
includes_todo("TODO Paint my living room.") => false
includes_todo("#todo Paint my living room.") => false
includes_todo("") => false
includes_todo(nil) => throws an ArgumentError

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
