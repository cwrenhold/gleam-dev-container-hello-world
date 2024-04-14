import gleam/io
import gleam/int
import gleam/list

pub fn main() {
  io.println("Hello, world!\n")

  let a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  // Function to print an integer
  let printer = fn (i) {
    i
    |> int.to_string
    |> io.println
  }

  // Print all of the values in a
  list.map(a, printer)

  io.println("")

  // Filter to just the even numbers, then triple them
  a
  |> list.filter(_, fn (val) { val % 2 == 0 })
  |> list.each(_, fn (b) {
    b
    |> fn (c) { c * 3 }
    |> int.to_string
    |> io.println
  })
}
