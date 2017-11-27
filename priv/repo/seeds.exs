alias SansTitre.Repo
alias SansTitre.Post

Repo.delete_all Post

Repo.insert! %Post{
  title: "This is a test",
  slug: "test-post",
  body: """
  Hello,
  This is a test article.
  *italics* **bold**
  `code`
  """
}

Repo.insert! %Post{
  title: "Foo",
  slug: "foo",
  body: """
  Foo Foo Foo
  Foo Foo
  Foo
  """
}

Repo.insert! %Post{
  title: "Bar",
  slug: "bar",
  body: """
  Bar Bar Bar
  """
}
