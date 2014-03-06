#!/bin/bash

# Simple deploy and undeploy scenarios for Jetty8

WGET=$(which wget);
[ "x${context}" == "xROOT" ] && context="root";

function _deploy(){
        [ -f "${WEBROOT}/${context}.war" ] && {
                rm -f "${WEBROOT}/${context}.war";
                $WGET --no-check-certificate --content-disposition -O "${WEBROOT}/${context}.war" "$package_url";
                }
}

function _undeploy(){
        [ -f "${WEBROOT}/${context}.war" ] && rm -f "${WEBROOT}/${context}.war";
}


