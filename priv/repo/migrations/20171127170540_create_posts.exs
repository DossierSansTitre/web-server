defmodule SansTitre.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text, null: false
      add :body,  :text, null: false
      add :slug,  :text, null: false

      timestamps()
    end
    create index :posts, :slug, unique: true
  end
end
