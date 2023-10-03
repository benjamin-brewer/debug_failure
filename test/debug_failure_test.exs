defmodule DebugFailureTest do
  use ExUnit.Case
  doctest DebugFailure

  test "greets the world" do
    assert DebugFailure.hello() == :world
  end
end
