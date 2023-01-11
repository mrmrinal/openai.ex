defmodule OpenAI.Files do
  @moduledoc false
  alias OpenAI.Client

  @files_base_url "/v1/files"

  def url(), do: @files_base_url
  def url(file_id), do: "#{@files_base_url}/#{file_id}"

  def fetch(file_id) do
    url(file_id)
    |> Client.api_get()
  end

  def fetch() do
    url()
    |> Client.api_get()
  end

  def fetch_content(file_id) do
    url("#{file_id}/content")
    |> Client.api_get()

  end
end
