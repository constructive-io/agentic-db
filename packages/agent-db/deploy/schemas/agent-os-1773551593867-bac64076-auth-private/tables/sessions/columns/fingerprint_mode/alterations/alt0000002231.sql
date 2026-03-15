-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000002231
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/fingerprint_mode/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.fingerprint_mode IS E'Session validation mode: strict (origin+ip+uagent), lax (origin only), or none (no validation)';

