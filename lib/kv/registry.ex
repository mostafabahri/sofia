defmodule KV.Registry do
  def get([_head | tail]) do
    tail
  end

  def get([]) do
    "empty"
  end

  def get({:find, name}) do
    "found" <> name
  end

  def get({:lookup, name}, _from, names) do
    [name, names]
  end
end
