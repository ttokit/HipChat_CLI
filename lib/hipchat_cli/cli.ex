defmodule HipChatCLI.CLI do
  def main(argv) do
    argv
    |> proccess
  end

  def proccess(argv) do
    parse = OptionParser.parse(argv,
                               switches: [token: :string, room_id: :string],
                               aliases:  [t: :token, r: :room_id])

    case parse do
      {[token: token_file, room_id: room_id], [message], _}
        -> HipChatCLI.send_message(token_file, room_id, message)
    end
  end
end
