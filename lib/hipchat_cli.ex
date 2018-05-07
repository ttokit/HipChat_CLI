defmodule HipChatCLI do
  def send_message(token_file, room_id, message) do
    access_token = token_file |> Path.expand |> File.read! |> String.trim

    Hipchat.ApiClient.new(access_token)
    |> Hipchat.V2.Rooms.send_message(room_id, %{message: message})
  end
end
