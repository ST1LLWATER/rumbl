defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = id |> Integer.parse() |> elem(0) |> Accounts.get_user()
    IO.inspect(user)
    render(conn, "show.html", user: user)
  end
end
