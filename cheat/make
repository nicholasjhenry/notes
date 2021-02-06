    ./configure

    CC           C compiler command
    CFLAGS       C compiler flags
    LDFLAGS      linker flags, e.g. -L<lib dir> if you have libraries in a
                 nonstandard directory <lib dir>
    LIBS         libraries to pass to the linker, e.g. -l<library>
    CPPFLAGS     (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
                 you have headers in a nonstandard directory <include dir>
    CPP          C preprocessor

Echo:

    define ANNOUNCE_BODY
        Version $(VERSION) of $(PACKAGE_NAME) has been released.

        It can be downloaded from $(DOWNLOAD_URL).

        etc, etc.
    endef

    export ANNOUNCE_BODY
    all:
        @echo "$$ANNOUNCE_BODY"

https://stackoverflow.com/questions/649246/is-it-possible-to-create-a-multi-line-string-variable-in-a-makefile
