#!/bin/bash
# Pterodactyl Wings (Node) Installer — Updated
# Original by Joy+jtg, updated to current Wings release + Docker Compose v2

set -e

echo "📦 Installing Pterodactyl Wings with Docker..."

# Step 1: Create required host directories (Wings expects these to exist)
mkdir -p /etc/pterodactyl
mkdir -p /var/lib/pterodactyl
mkdir -p /var/log/pterodactyl
mkdir -p /tmp/pterodactyl

mkdir -p pterodactyl/wings
cd pterodactyl/wings || exit 1

# Step 2: Create docker-compose.yml file (current stable Wings release)
cat <<EOF > docker-compose.yml
services:
  wings:
    image: ghcr.io/pterodactyl/wings:v1.13.0
    restart: always
    networks:
      - wings0
    ports:
      - "8080:8080"
      - "2022:2022"
      - "443:443"
    tty: true
    environment:
      TZ: "UTC"
      WINGS_UID: 988
      WINGS_GID: 988
      WINGS_USERNAME: pterodactyl
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /var/lib/docker/containers/:/var/lib/docker/containers/
      - /etc/pterodactyl/:/etc/pterodactyl/
      - /var/lib/pterodactyl/:/var/lib/pterodactyl/
      - /var/log/pterodactyl/:/var/log/pterodactyl/
      - /tmp/pterodactyl/:/tmp/pterodactyl/
      - /etc/ssl/certs:/etc/ssl/certs:ro
      # Optional: If upgrading from older daemon versions
      # - /srv/daemon-data/:/srv/daemon-data/
      # Optional: Required for SSL if using Let's Encrypt
      # - /etc/letsencrypt/:/etc/letsencrypt/

networks:
  wings0:
    name: wings0
    driver: bridge
    ipam:
      config:
        - subnet: 172.21.0.0/16
    driver_opts:
      com.docker.network.bridge.name: wings0
EOF

echo ""
echo "⚠️  Before starting Wings, paste your Panel's node configuration into:"
echo "    /etc/pterodactyl/config.yml"
echo "    (Panel admin → Nodes → your node → Configuration tab)"
echo ""
read -p "Press Enter once config.yml is in place to start Wings, or Ctrl+C to do it manually later... "

# Step 3: Start Wings (Docker Compose v2 syntax — 'docker compose', not 'docker-compose')
docker compose up -d

echo "✅ Wings node setup done. Check status with: docker compose logs -f"

