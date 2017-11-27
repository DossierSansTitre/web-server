defmodule SansTitre.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias SansTitre.Post


  schema "posts" do
    field :title, :string
    field :slug, :string
    field :body, :string
    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [])
    |> validate_required([])
  end
end
