defmodule KV.TaskTest do
  use ExUnit.Case

  describe "KV Task" do
    test "kv get" do
      {:ok, pid} = KV.Task.start_link()

      send(pid, {:get, :color, self()})

      assert_receive {:kv, :color, nil}

      send(pid, {:put, :color, :black})
      send(pid, {:get, :color, self()})

      assert_receive {:kv, :color, :black}
    end
  end
end
