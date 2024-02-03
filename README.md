# Palworld Rathole Docker Compose

This repo contains the config files and services definitions to run a Rathole server and client for Palworld

## Usage

### Dependencies
* [just](https://github.com/casey/just)
* docker and docker compose

First, copy the example `.env.example` file to `.env` and fill in the required values.
* `RATHOLE_SERVER_ADDRESS` - the address where the Rathole server is running
* `RATHOLE_TOKEN` - the token to use for Rathole server and client
```bash
cp .env.example .env
```

Then generate the required config files from the templates and your `.env`
```bash
just gen-rathole-configs
```

### Server

```bash
just start-server
```

### Client

```bash
just start-client
```
