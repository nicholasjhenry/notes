Show lines before:

    ack -B 3

Show lines after:

    ack -A 3

Search within bundled gems:

    ack 'def semantic_errors' $(bundle show --paths)

With regex:

    ack --cc 'Load(?=.*observation_entries)'
