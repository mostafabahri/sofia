defmodule KV.Bucket do
  def start_link(ops \\ []) do
    Agent.start_link(fn -> %{} end, ops)
  end

  def get(bucket, key) do
    Agent.get(bucket, fn map -> Map.get(map, key) end)
  end

  def put(bucket, key, value) do
    Agent.update(bucket, &Map.put(&1, key, value))
  end
end
