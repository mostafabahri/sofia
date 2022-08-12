defmodule KV.TaskTest do
  use ExUnit.Case

  describe "KV Task" do
    test "get/put" do
      {:ok, pid} = KV.Task.start_link()

      send(pid, {:get, :color, self()})

      assert_receive {:kv, :color, nil}

      send(pid, {:put, :color, :black})
      send(pid, {:get, :color, self()})

      assert_receive {:kv, :color, :black}
    end
  end

  describe "Agent" do
    test "get/put" do
      # testing stuff out
      Agent.start_link(fn -> %{} end, name: :kv)
      Agent.update(:kv, fn map -> Map.put(map, :color, :blue) end)

      assert :blue == Agent.get(:kv, fn map -> Map.get(map, :color) end)
    end
  end
end
