#!/bin/bash

function kill_xvfb() {
    local xvfb_pids=$(ps aux | awk '/tmp\/xvfb-run/ {print $2}')
    if [[ -n "$xvfb_pids" ]]; then
        echo "Killing the following xvfb processes: $xvfb_pids"
        sudo kill $xvfb_pids
    fi
}

kill_xvfb
