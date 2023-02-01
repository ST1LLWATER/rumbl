defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{name: "Chris", id: 1, username: "chris"},
      %User{name: "Robin", id: 2, username: "robin"},
      %User{name: "Dan", id: 3, username: "danny"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
