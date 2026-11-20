# Final Reflection – Enterprise Cloud Deployment

## Key Takeaways
Deploying a multi-container web application on Ubuntu Server highlighted the importance of infrastructure isolation, network configuration, and automated maintenance. Using Docker Compose simplified service dependency management between WordPress and MySQL while preserving persistent volumes across container restarts.

## Troubleshooting & Resilience
During deployment, configuring dual network adapters (NAT for external package downloads and Host-Only for static SSH management) proved essential. Adjusting Docker daemon settings (`MTU` and single-stream downloads) resolved virtual network packet resets when pulling large container images.

## Security & Automation
Implementing UFW firewall rules reduced the server's attack surface to only essential ports (`22` and `8080`). Pairing `mysqldump` with a scheduled cron job ensured reliable, hands-free database backups without manual intervention.
