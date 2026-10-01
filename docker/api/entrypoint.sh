#!/bin/sh
set -eu
php bin/check-config.php
php bin/migrate.php
exec "$@"
