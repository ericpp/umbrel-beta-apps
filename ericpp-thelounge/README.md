# The Lounge Umbrel App

This is a The Lounge app for Umbrel that automatically creates a default user on first startup.

## Features

- **Automatic User Creation**: Creates a default user "umbrel" with password "umbrel" on first startup
- **Configurable Password**: You can change the default password by setting the `THELOUNGE_DEFAULT_PASSWORD` environment variable
- **Idempotent**: The user creation only happens if the user doesn't already exist

## Default Credentials

- **Username**: `umbrel`
- **Password**: `umbrel` (can be customized)

## Customization

To change the default password, you can modify the `THELOUNGE_DEFAULT_PASSWORD` environment variable in the `docker-compose.yml` file:

```yaml
environment:
  - THELOUNGE_DEFAULT_PASSWORD=your_custom_password
```

## Files

- `docker-compose.yml`: Main Docker configuration
- `init.sh`: Initialization script that creates the default user
- `umbrel-app.yml`: Umbrel app manifest with defaultUsername set to "umbrel"

## How it works

1. When the container starts, the `init.sh` script runs
2. It waits 5 seconds for The Lounge to be ready
3. It checks if the "umbrel" user already exists
4. If not, it creates the user with the specified password
5. Then it starts The Lounge normally

The user will be available immediately after the container starts successfully. 