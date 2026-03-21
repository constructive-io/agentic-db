-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000001467
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/column


COMMENT ON COLUMN "agentic_db_auth_private".sessions.fingerprint_mode IS E'Session validation mode: strict (origin+ip+uagent), lax (origin only), or none (no validation)';

