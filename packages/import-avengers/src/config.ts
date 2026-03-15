import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

const DATABASE_NAME = process.env.DATABASE_NAME || 'agentic-db-1772448876647';

export const config = {
  // Source: local Avengers Postgres
  avengersDbUrl: process.env.AVENGERS_DB_URL || 'postgres://postgres:password@localhost:5432/avengers',

  // Target: Agent-OS platform
  graphqlUrl: 'http://[::1]:3000/graphql',
  authHost: `auth-${DATABASE_NAME}.localhost`,
  appHost: `app-public-${DATABASE_NAME}.localhost`,

  // Agent credentials
  agentEmail: process.env.AGENT_EMAIL || 'rag-test@example.com',
  agentPassword: process.env.AGENT_PASSWORD || 'RagTest123!',
};
