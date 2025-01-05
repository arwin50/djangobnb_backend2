#!/bin/sh

if [ "$DATABASE" = "postgres" ]; then
    echo "Checking if the database is running..."

    while ! nc -z "$SQL_HOST" "$SQL_PORT"; do
        sleep 0.1
    done

    echo "The database is up and running ;-D"
fi

# Apply migrations
python manage.py migrate

# Execute the command passed to the container
exec "$@"
