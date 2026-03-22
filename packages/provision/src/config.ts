/**
 * config.ts — Centralized configuration for Agent OS provisioning
 *
 * Routing modes:
 *   Domain-based (constructive `pnpm dev` server, port 5555):
 *     api.localhost:5555    → Platform API
 *     auth.localhost:5555   → Auth API
 *   Header-based (cnc server, port 3000):
 *     localhost:3000        → All endpoints via X-Meta-Schema / X-Schemata headers
 *
 * Default: header-based (cnc server) — override via API_ENDPOINT / AUTH_ENDPOINT env vars.
 */

import 'dotenv/config';

export const config = {
  /** Platform API endpoint — schema builder (secureTableProvision, field, relation, index) */
  apiEndpoint: process.env.API_ENDPOINT || 'http://localhost:3000/graphql',

  /** Auth API endpoint — sign up / sign in */
  authEndpoint: process.env.AUTH_ENDPOINT || 'http://localhost:3000/graphql',

  /** Database name (set by create-db, read by provision) */
  databaseName: process.env.DATABASE_NAME || 'agentic-db',

  /** Database ID (set by create-db, read by provision scripts) */
  databaseId: process.env.DATABASE_ID,

  /** Admin email for sign up */
  adminEmail: process.env.ADMIN_EMAIL || 'admin@agentic-db.local',

  /** Admin password for sign up */
  adminPassword: process.env.ADMIN_PASSWORD || 'AgentOS2026!',

  /** Access token (set by create-db, read by provision scripts) */
  accessToken: process.env.ACCESS_TOKEN,

  /** Auth headers derived from access token */
  get authHeaders(): Record<string, string> {
    return this.accessToken
      ? { Authorization: `Bearer ${this.accessToken}` }
      : {};
  },
};
