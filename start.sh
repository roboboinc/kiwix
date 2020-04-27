#!/bin/sh

# Download if necessary a file
if [ ! -z "$DOWNLOAD" ]
then
    ZIM=`basename $DOWNLOAD`
    wget $DOWNLOAD -O "$ZIM"

    # Set arguments
    if [ "$#" -eq "0" ]
    then
        set -- "$@" $ZIM
    fi
fi

CMD="/usr/local/bin/kiwix-serve --port=80 $@"
echo $CMD
$CMD

# If error, print the content of /data
if [ $? -ne 0 ]
then
    echo "Here is the content of /data:"
    find /data -type f
fi
