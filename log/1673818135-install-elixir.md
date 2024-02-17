Caused by migrating homebrew from Intel to Apple Silicon:

    asdf_25.1.2 is not a kerl-managed Erlang/OTP installation
    The asdf_25.1.2 build has been deleted
    Extracting source code
    Building Erlang/OTP 25.1.2 (asdf_25.1.2), please wait...
    Configure failed.
    checking for 'runtime library path' linker flag... not found
    checking for multiarch directory... arm64-apple-darwin22.1.0
    checking size of void *... (cached) 8
    checking for static zlib... no
    checking how to run the C preprocessor... clang -E
    checking for grep that handles long lines and -e... /usr/bin/grep
    checking for egrep... /usr/bin/grep -E
    checking for OpenSSL header in /usr/local/opt/openssl@1.1... yes
    checking for OpenSSL in /usr/local/opt/openssl@1.1... configure: error: neither static nor dynamic crypto library found in /usr/local/opt/openssl@1.1
    ERROR: /Users/foo/.asdf/plugins/erlang/kerl-home/builds/asdf_25.1.2/otp_src_25.1.2/lib/crypto/configure failed!

    Please see /Users/foo/.asdf/plugins/erlang/kerl-home/builds/asdf_25.1.2/otp_build_25.1.2.log for full details.


