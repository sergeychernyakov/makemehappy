#!/bin/bash
set -e

# Настройка базы данных
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

exec "$@"
