import 'dotenv/config';

export const config = {
  apiEndpoint: process.env.API_ENDPOINT || 'http://api.localhost:3000/graphql',
  authEndpoint: process.env.AUTH_ENDPOINT || 'http://auth.localhost:3000/graphql',
  databaseName: process.env.DATABASE_NAME || 'agentic-db',
  databaseId: process.env.DATABASE_ID,
  adminEmail: process.env.ADMIN_EMAIL || 'admin@agentic-db.local',
  adminPassword: process.env.ADMIN_PASSWORD || 'AgentOS2026!',
  get authHeaders() {
    return this.accessToken ? { Authorization: `Bearer ${this.accessToken}` } : {};
  },
  accessToken: process.env.ACCESS_TOKEN,
  get appEndpoint() {
    return `http://app-public-${this.databaseName}.localhost:3000/graphql`;
  }
};

export function getAuthHeaders(token?: string): Record<string, string> {
  return token ? { Authorization: `Bearer ${token}` } : {};
}

export function getAppEndpoint(dbName: string): string {
  return `http://app-public-${dbName}.localhost:3000/graphql`;
}

export function getAuthEndpointForDb(dbName: string): string {
  return `http://auth-${dbName}.localhost:3000/graphql`;
}
