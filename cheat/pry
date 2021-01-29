    gem 'pry-rails'
    gem 'pry-debugger'
    gem 'pry-stack_explorer'
    gem 'pry-remote'
    gem 'jazz_hands'

config/initializers/pry.rb

    # Use Pry instead of IRB
    REPLACE_ME::Application.configure do
      silence_warnings do
        begin
          require 'pry'
          IRB = Pry
        rescue LoadError
        end
      end
    end

Commands

    ls Base64 # methods
    _ # last output
    ? Base64.strict_encode64 # show-doc
    cat base_auth.rb
    require _file_
    show-source BasicAuth.decode
    edit <esc>_ # last parameter
    wtf? # show backtrace for most recent exception
    _out_ # array of output variables
    .git diff # run shell commands
    whereami
    ; # at end of lines, hides output
    edit --ex # current position
    pry-backtrace
    caller
