Example 1

    <<-eos
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
      exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
      irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
      pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
      deserunt mollit anim id est laborum.
    eos

Example 2

    Comment.where(post_id: @posts.map(&:id)).select(<<-SQL).to_sql
      comments.*,
      dense_rank() OVER (
        PARTITION BY comments.post_id
        ORDER BY comments.created_at DESC
      ) AS comment_rank
    SQL

Example 3

    <<-SQL.squish
      SELECT
        CAST('#{name}' AS VARCHAR(30)) as COLUMN_NAME,
        COUNT(DISTINCT #{name}) AS DISTINCT_COUNT
        FROM #{table.call}
    SQL
