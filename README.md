# Home Assistant Webserver Addon

This is a custom Home Assistant addon that provides a webserver.

## How to use

1. Add this repository URL in your Home Assistant add-on store as a custom repository.
2. Install the "Home Assistant Webserver" add-on from the local add-ons section.
3. Place your HTML files in the `/data` or `/config/www` directory.
4. Start the add-on and access it via the Home Assistant sidebar (Ingress).

## Repository Structure

- `ha-webserver/` (addon folder)
  - `config.yaml`: Addon metadata and configuration
  - `Dockerfile`: Container build instructions
  - `run.sh`: Entrypoint script
- `README.md`: This file
