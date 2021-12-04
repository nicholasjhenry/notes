Install a Ruby version:

    https://github.com/asdf-vm/asdf-ruby
    https://github.com/rbenv/ruby-build/wiki#troubleshooting

    brew install rbenv/tap/openssl@1.0
    RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)" asdf install ruby 2.3.8

Erlang

    # Check dependencies https://github.com/asdf-vm/asdf-erlang#osx

    KERL_BUILD_DOCS="yes" KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl@1.1)"  asdf install erlang 22.3.4

Kerl

export KERL_CONFIGURE_OPTIONS="
      --disable-debug \
      --disable-silent-rules \
      --enable-dynamic-ssl-lib \
      --enable-hipe \
      --enable-shared-zlib \
      --enable-smp-support \
      --enable-threads \
      --enable-wx \
      --with-ssl=$(brew --prefix openssl@1.1) \
      --without-javac
      --enable-darwin-64bit \
      --enable-kernel-poll \
      --with-dynamic-trace=dtrace \
      "
