#!/bin/sh

mkdir -p /var/opt/thelounge/users

# Check if the default user already exists
if ! thelounge list | grep -q "umbrel"; then
    echo "Creating default user 'umbrel'..."

    # Create user with the default password
    thelounge add umbrel --password "$APP_PASSWORD"

    if [ $? -eq 0 ]; then
        echo "Default user 'umbrel' created successfully with password: $APP_PASSWORD"
    else
        echo "Failed to create default user 'umbrel'"
    fi
else
    echo "Default user 'umbrel' already exists"
fi

# Start The Lounge normally
exec thelounge start
