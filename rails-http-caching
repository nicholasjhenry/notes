max-age (specifies when to fetch the page again based on a time period)

    def index
      @posts = Post.all
      expires_in 10.minutes #=> header["Cache-Control"] = "max-age=600"
    end

etag (a key to determine if the page changes)

    def index
      @posts = Post.all
      # => headers['Etag'] = Digest::MD5.hexdigest(body) - 304 not modified
    end

    def show
      @user = User.find(param[:id])
      if stale?(:etag => @user) #=> request.etag_matches?(response.etag), head: not_modified
        # do extra queries
        # render stuff
      end
    end

Alternative etag syntax:

    def show
      @user = User.find(params[:id])
      fresh_when(:etag => @user)
    end

Multiple models:

    def show
      @user = User.find(params[:id])
      @company = Company.find(param[:company_id])

      if stale? [@user, @company]
        ...
      end
    end

etag gems:

* https://github.com/rails/etagger

last_modified (compares date of when the page was last modified)

    def show
      @user = User.find(params[:id])
      if stale?(:last_modified => @user.updated_at.utc) #=> request.not_modified(response.last_modified)
        ...
      end
    end

Alternative last_modified syntax:

    def show
      @user = User.find(param[:id])
      fresh_when :last_modified => @user.updtaed_at.utc
    end

etag + last_modified

    fresh_when(
      :etag => [@post, @user], # internal models
      :last_modified => RSS.last.published_on # external service
    )

changing cache-control to public

    headers['Cache-Control'] = 'private, max-age=0, must-revalidate'

    expires_in 10.minutes, :private => false, :public => true

    fresh_when :last_modified => @updated_at.utc
    headers['Cache-Control'] = 'public'

    fresh_when :etag => @user
    headers['Cache-Control'] = 'public'
