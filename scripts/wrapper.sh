#!/bin/bash

main_process=${1}
tracker_process=${2}

tmux new-session -d -s tracker
tmux send-keys -t tracker "${tracker_process}" C-m
eval "${main_process}"
tmux kill-session -t tracker
