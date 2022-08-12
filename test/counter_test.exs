defmodule CounterTest do
  use ExUnit.Case

  test "increment" do
    Counter.start_link(0)
    assert Counter.value() == 0

    Counter.increment()
    Counter.increment()

    assert Counter.value() == 2
  end
end
