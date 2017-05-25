defmodule GigalixirGettingStartedPhx13Rc2.Repo do
  use Ecto.Repo, otp_app: :gigalixir_getting_started_phx_1_3_rc_2

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
