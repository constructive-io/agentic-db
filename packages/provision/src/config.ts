/**
 * config.ts — Centralized configuration for Agent OS provisioning
 *
 * Endpoints:
 *   localhost:3000   → Constructive GraphQL Server (header-routed)
 *     X-Meta-Schema: true  → meta-schema access (auth, platform API)
 *   app-public-*     → Generated app API (data CRUD, RAG — not used here)
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
