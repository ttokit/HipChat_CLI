defmodule HipChatCLI.CLI do
  def main(argv) do
    argv
    |> parse_argv
    |> proccess
  end

  def parse_argv(argv) do
    parse = OptionParser.parse(argv,
                               switches: [help: :boolean, token: :string, room_id: :string],
                               aliases:  [h: :help, t: :token, r: :room_id])

    case parse do
      {[help: true], _, _}
        -> :help
      {[token: token_file, room_id: room_id], [message], _}
        -> [message, token: token_file, room_id: room_id]
    end
  end

  def proccess(:help) do
    IO.puts """
    usage: hipchat_cli (-h | --help) [-t | --token token_file_path] [-r | --room_id room_id] message
    """
  end

  def proccess([message, token: token_file, room_id: room_id]) do
    HipChatCLI.send_message(token_file, room_id, message)
  end
end
