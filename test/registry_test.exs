defmodule KV.RegistryTest do
  use ExUnit.Case, async: true

  test "registry lookup" do
    {:ok, registry} = KV.Registry.start_link()
    assert KV.Registry.create(registry, "shopping") == :ok
    {:ok, bucket} = KV.Registry.lookup(registry, "shopping")

    KV.Bucket.put(bucket, "milk", 3)
    assert KV.Bucket.get(bucket, "milk") == 3
  end
end
