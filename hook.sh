#!/usr/bin/env bash


run_hook() {
    dir_pre_mount_handler="${mount_handler:-default_mount_handler}"
    mount_handler=dir_mount_handler
}

dir_mount_handler() {
    $dir_pre_mount_handler "$1"
    mount --bind -- "$1/$dir" "$1"
}
