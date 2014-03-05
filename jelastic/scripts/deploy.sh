#!/bin/bash -x

# Simple deploy and undeploy scenarios for Jetty8

WGET=$(which wget);

function _deploy(){
        if [ -e "${WEBROOT}/$context" ]
            then
                rm -fr ${WEBROOT}/$context;
        fi
        $WGET --no-check-certificate --content-disposition -O "${WEBROOT}/${context}.war" "$package_url";
}

function _undeploy(){
        [ -f ${WEBROOT}/${context}.war ] && rm -f ${WEBROOT}/${context}.war;
}


