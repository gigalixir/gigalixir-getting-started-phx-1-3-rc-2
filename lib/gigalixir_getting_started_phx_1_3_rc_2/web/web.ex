defmodule GigalixirGettingStartedPhx13Rc2.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use GigalixirGettingStartedPhx13Rc2.Web, :controller
      use GigalixirGettingStartedPhx13Rc2.Web, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: GigalixirGettingStartedPhx13Rc2.Web
      import Plug.Conn
      import GigalixirGettingStartedPhx13Rc2.Web.Router.Helpers
      import GigalixirGettingStartedPhx13Rc2.Web.Gettext
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/gigalixir_getting_started_phx_1_3_rc_2/web/templates",
                        namespace: GigalixirGettingStartedPhx13Rc2.Web

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import GigalixirGettingStartedPhx13Rc2.Web.Router.Helpers
      import GigalixirGettingStartedPhx13Rc2.Web.ErrorHelpers
      import GigalixirGettingStartedPhx13Rc2.Web.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import GigalixirGettingStartedPhx13Rc2.Web.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
