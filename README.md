# VHost God

**VHost God** is an advanced subdomain and virtual host discovery tool designed for bug bounty hunters. It helps detect hidden and misconfigured virtual hosts by performing targeted and automated scanning of domains.

## Installation

Clone the repository and install dependencies:

```bash
bash <(curl -s https://raw.githubusercontent.com/yourusername/vhost-god/main/install.sh)
```

## Running

To run the CLI scan:

```bash
source venv/bin/activate
python3 vhostgod.py -d target.com
```

To run the dashboard:

```bash
source venv/bin/activate
python3 dashboard.py
```

## Features

- Host header fuzzing
- Response diffing and clustering
- Screenshot-based vhost detection
- Subdomain enumeration and passive data gathering
- Real-time monitoring and alerting
- Optional web dashboard for results
