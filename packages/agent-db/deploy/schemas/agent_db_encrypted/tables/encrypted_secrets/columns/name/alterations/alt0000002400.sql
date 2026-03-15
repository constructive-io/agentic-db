-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002400
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/column


COMMENT ON COLUMN "agent_db_encrypted".encrypted_secrets.name IS E'Key name identifying the secret (e.g. password)';

