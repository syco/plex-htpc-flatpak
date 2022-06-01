#!/bin/sh

BASE_DIR=/app/plex-htpc

export LD_LIBRARY_PATH=$BASE_DIR/usr/lib/x86_64-linux-gnu:$BASE_DIR/usr/lib/x86_64-linux-gnu/pulseaudio:$BASE_DIR/lib/:$BASE_DIR:$LD_LIBRARY_PATH
export QTWEBENGINEPROCESS_PATH=$BASE_DIR/bin/QtWebEngineProcess
export FONTCONFIG_PATH="$BASE_DIR/etc/fonts"

export PLEX_USERDATA_DIR=${XDG_DATA_HOME:-$HOME/.local/share/plex}
export PLEX_RESOURCE_PATH=$BASE_DIR/resources
export PLEX_CACHE_DIR=${XDG_CACHE_HOME:-$HOME/.cache/plex}
export PLEX_STORAGE_INI_DIR=$PLEX_USERDATA_DIR
export PLEX_LOG_DIR=$PLEX_USERDATA_DIR/Logs

export PLEX_MEDIA_SERVER_RESOURCES=$BASE_DIR/resources

export LIBVA_DRIVERS_PATH=/usr/lib/dri

"$BASE_DIR"/bin/Plex "$@"

