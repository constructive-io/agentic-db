/**
 * enable-membership-defaults.ts — Enable app membership defaults for agentic-db
 *
 * The memberships_module generator seeds is_approved and is_verified as FALSE
 * (secure by default). For agentic-db we want users to be immediately active
 * on sign-up, so this script UPDATEs both to TRUE.
 *
 * This runs automatically during provisioning (see provision.ts), but can also
 * be run standalone to fix an existing database:
 *
 *   eval "$(pgpm env)"
 *   pnpm run enable-membership-defaults
 *
 * Follows the same pattern as constructive-db's enableAppMembershipDefaults().
 */

import { Pool } from 'pg';

async function main() {
  const pgHost = process.env.PGHOST;
  if (!pgHost) {
    console.error('\n\u274c PGHOST not set. Run: eval "$(pgpm env)"');
    process.exit(1);
  }

  const dbName = process.env.PGDATABASE || 'constructive';
  console.log(`\n\ud83d\udd11 Enabling app membership defaults (database: ${dbName})...`);

  const pool = new Pool({ database: dbName });
  const { rowCount } = await pool.query(
    `UPDATE agentic_db_memberships_public.app_membership_defaults
     SET is_approved = TRUE, is_verified = TRUE`
  );
  await pool.end();

  if (rowCount === 0) {
    console.error('\u26a0\ufe0f  No rows updated. Is the memberships module provisioned?');
    process.exit(1);
  }

  console.log('   is_approved = TRUE');
  console.log('   is_verified = TRUE');
  console.log('\n\u2728 Done.\n');
}

main().catch((err) => {
  console.error('\u274c Failed:', err.message ?? err);
  process.exit(1);
});
