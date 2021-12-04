
# Clear Tables

    #!/usr/bin/env bash

    set -e

    echo
    echo "Clearing Message Store Tables"
    echo "= = ="
    echo

    psql -h 0.0.0.0 -p 5432 -U postgres -c "TRUNCATE message_store.messages RESTART IDENTITY;" message_store

    echo
    echo "Cleaing View Data Tables"
    echo "= = ="

    psql -h 0.0.0.0 -p 5433 -U postgres -c "TRUNCATE message_store.messages RESTART IDENTITY;" message_store

    psql -h 0.0.0.0 -p 5433 -U postgres -c "TRUNCATE registration.registrations RESTART IDENTITY;" view_data

    echo
    echo "- - -"
    echo "(done)"
    echo
