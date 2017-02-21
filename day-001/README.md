# Day 001

## FizzBuzz Problem (http://programming.dojo.net.nz/codex/fizz-buzz/index)

Fizz Buzz is a mathematical game which is played with a group of people. Each person says a number in sequence, but when the number is a multiple of 3, they have to say "Fizz", when it is a multiple of 5 they have to say "Buzz", and if it is a multiple of both 3 and 5, "FizzBuzz". If someone makes a mistake and it is noticed, they are out.

A typical game might start like: 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, etc

## Elixir challenges and my notes

- Using Elixir lang feature: function guard clauses. For more details see https://hexdocs.pm/elixir/master/guards.html
- Using Functions in Elixir Guard Clauses: http://keathley.io/2016/04/09/elixir-guard-clauses.html

I almost did a macro to perform something like that:

```elixir
defmacro is_divisible_by_five(number) do
  quote do: Integer.mod(unquote(number, 5)) == 0
end

def replace(number) when is_divisible_by_five(number, do: "buzz")
```

But, reading macros documentation (http://elixir-lang.org/getting-started/meta/macros.html#foreword) I discovered that for this kata, a macro is not necessary! So I look guards documentation and see that rem/2 is a function allowed to be used in when guard :)

And that's all folks!
