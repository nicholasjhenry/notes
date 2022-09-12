    find_by(title: 'hello)
    find_or_initialize_by
    find_or_create_by

    scope :active -> { where(active: true) }

    Post.none

    Post.where.not(author: author)

    User.order(:name, created_at: :desc)

    Post.include(:comments).where("comments.name = 'foo'").references(:)
