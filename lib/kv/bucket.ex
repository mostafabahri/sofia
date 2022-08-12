defmodule KV.Bucket do
  def start_link(ops \\ []) do
    Agent.start_link(fn -> %{} end, ops)
  end

  def get(bucket, key) do
    Agent.get(bucket, fn map -> Map.get(map, key) end)
  end

  def put(bucket, key, value) do
    Agent.update(bucket, fn map -> Map.put(map, key, value) end)
  end
end
