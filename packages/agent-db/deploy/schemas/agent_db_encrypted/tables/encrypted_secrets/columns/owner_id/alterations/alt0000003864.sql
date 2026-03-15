-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000003864
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/column


COMMENT ON COLUMN "agent_db_encrypted".encrypted_secrets.owner_id IS 'User who owns this encrypted secret';

