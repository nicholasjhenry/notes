Reference https://trac.ffmpeg.org/wiki/How%20to%20concatenate%20(join,%20merge)%20media%20files

    # this is a comment
    file '/path/to/file1'
    file '/path/to/file2'

    for f in ./*.mp4; do echo "file '$f'" >> list.txt; done
    file '/path/to/file3'ffmpeg -f concat -i list.txt -c copy output.mp4
