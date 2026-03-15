-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000003840
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.fingerprint_mode IS E'Session validation mode: strict (origin+ip+uagent), lax (origin only), or none (no validation)';

