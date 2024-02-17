No no no.  Don't use kill -9. It doesn't give the process a chance to cleanly:

1. shut down socket connections
2. clean up temp files
3. inform its children that it is going away
4. reset its terminal characteristics and so on and so on and so on.

Generally, send 15, and wait a second or two, and if that doesn't work, send 2, and if that doesn't work, send 1.
If that doesn't, REMOVE THE BINARY because the program is badly behaved! Don't use kill -9.  Don't bring out the combine harvester just to tidy up the flower pot.
