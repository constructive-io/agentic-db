/**
 * config.ts — Centralized configuration for Agent OS provisioning
 *
 * Routing modes:
 *   Domain-based (cnc server, port 3000):
 *     auth.constructive.io:3000  → Auth API (sign up / sign in)
 *     api.constructive.io:3000   → Platform API (schema builder)
 *   Override via API_ENDPOINT / AUTH_ENDPOINT env vars.
 */

import 'dotenv/config';

export const config = {
  /** Platform API endpoint — schema builder (secureTableProvision, field, relation, index) */
  apiEndpoint: process.env.API_ENDPOINT || 'http://api.localhost:3000/graphql',

  /** Auth API endpoint — sign up / sign in */
  authEndpoint: process.env.AUTH_ENDPOINT || 'http://auth.localhost:3000/graphql',

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
