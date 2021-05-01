    # mix.exs
    {:assert_html, "~> 0.1.2", only: :test}

     # test/support/conn_case.ex
     quote do
       use AssertHTML
     end

     # foo_test.exs
     html_response(conn, 200)
       |> assert_html("h1", "Show Invoice")
       |> assert_html("[data-invoice=due-date]", text: "2020-01-11")
       |> assert_html("[data-product=price]", text: "$10.50")
       |> assert_html("[data-product=total]", text: "$21.00")
       |> assert_html("[data-service=price]", text: "$20.75")
       |> assert_html("[data-service=total]", text: "$62.25")
       |> assert_html("[data-invoice=total]", text: "$83.25")
