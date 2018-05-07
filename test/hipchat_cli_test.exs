defmodule HipChatCLITest do
  use ExUnit.Case
  doctest HipChatCLI

  test "greets the world" do
    assert HipChatCLI.hello() == :world
  end
end
