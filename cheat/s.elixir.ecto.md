Keyword Query Syntax

    import Ecto.Query, only: [from: 2]

    query = from w in Weather,
              where: w.prcp > 0 or is_nil(w.prcp),
              select: w

    # Returns %Weather{} structs matching the query
    Repo.all(query)

Macro API (Expression Query Syntax)

    Weather
    |> where([w], w.prcp > 0 or is_nil(w.prcp)),
    |> Repo.all

Example of nested params

    %{"title" => "Testing",
      "todo_items" =>
        %{
            "0" => %{"body" => "Testing 1"},
            "1" => %{"body" => "Testing 1"}
        }
    }

Preload with pre-defined join value:

    Repo.all from p in Post,
              join: c in assoc(p, :comments),
              where: c.votes > p.votes,
              preload: [comments: c]

Assocs

    # Get all comments for the given post
    Repo.all assoc(post, :comments)

    # Or build a query on top of the associated comments
    assoc(post, :comments)
    |> where([c], not is_nil(c.title))
    |> Repo.all

SQL

    Ecto.Adapters.SQL.to_sql(:all, repo, Post)
    {"SELECT p.id, p.title, p.inserted_at, p.created_at FROM posts as p", []}

     Engine.Repo.explain(:all, query)

     :all
    |> Ecto.Adapters.SQL.to_sql(Repo, <insert ecto query here>)
    |> Tuple.to_list()
    |> Enum.at(0)
    |> String.replace("\"", "")
    |> Kernel.<>(";")
    |> IO.inspect(label: "QUERY HERE")
