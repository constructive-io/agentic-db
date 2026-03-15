-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000003910
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/column


COMMENT ON COLUMN "agent_db_encrypted".encrypted_secrets.id IS 'Unique identifier for this encrypted secret entry';

