defmodule KV.RegistryTest do
  use ExUnit.Case, async: true

  test "registry lookup" do
    {:ok, registry} = GenServer.start_link(KV.Registry, :ok)
    assert GenServer.cast(registry, {:create, "shopping"}) == :ok
    {:ok, bucket} = GenServer.call(registry, {:lookup, "shopping"})

    KV.Bucket.put(bucket, "milk", 3)
    assert KV.Bucket.get(bucket, "milk") == 3
  end
end
