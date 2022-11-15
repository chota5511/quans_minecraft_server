#!/bin/sh

firstTimeInitFlag=true
initFlag=true

if [ $firstTimeInitFlag == true ]; then
    echo "Initializing MC Server"
    if [ -d "mcfile" ]; then
        echo "mcfile directory existed"
    else
        echo "mcfile directory does not exist, create mcfile directory"
        mkdir mcfile
    fi

    echo "Move script to mcfile directory"
    mv /server.jar /mcfile/server.jar
    mv /run_mc.sh /mcfile/run_mc.sh
    mv /init.sh /mcfile/init.sh
    mv /reload_server_properties.sh /mcfile/reload_server_properties.sh
fi

if [ $initFlag == true ]; then
    echo "Create minecraft application user"
    adduser -D minecraft

    echo "Set RW of mcfile to minecraft user"
    chmod 777 /mcfile

    sed -i "s/initFlag=true/initFlag=false/g" /mcfile/init.sh
fi

if [ $firstTimeInitFlag == true ]; then
    echo "Generate Minecraft Server files"
    /mcfile/run_mc.sh

    echo "Auto accept EULA"
    sed -i "s/eula=false/eula=true/g" /mcfile/eula.txt

    sed -i "s/firstTimeInitFlag=true/firstTimeInitFlag=false/g" /mcfile/init.sh
fi