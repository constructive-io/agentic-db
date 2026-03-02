# agent-os

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/pyramation-studio/agent-os/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/pyramation-studio/agent-os/actions/workflows/ci.yml/badge.svg" />
  </a>
</p>


## Getting Started

This workspace was generated with `pgpm init workspace`. For a complete guide on developing with pgpm workspaces, see [Workspaces: Organize Postgres](https://constructive.io/learn/modular-postgres/workspaces-organize-postgres).

### Quick Start

```sh
# Install dependencies
pnpm install

# Start PostgreSQL (requires Docker)
pgpm docker start

# Load environment variables
eval "$(pgpm env)"

# Create a module
pgpm init

# Navigate to your module and run tests
cd packages/your-module
pnpm test:watch
```

### Prerequisites

- Node.js 20+
- pnpm
- Docker
- PostgreSQL client tools (`psql`)
- pgpm (`npm install -g pgpm`)

See [Prerequisites](https://constructive.io/learn/quickstart/prerequisites) for detailed setup instructions.

## Credits

**🛠 Built by the [Constructive](https://constructive.io) team — creators of modular Postgres tooling for secure, composable backends. If you like our work, contribute on [GitHub](https://github.com/constructive-io).**

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
