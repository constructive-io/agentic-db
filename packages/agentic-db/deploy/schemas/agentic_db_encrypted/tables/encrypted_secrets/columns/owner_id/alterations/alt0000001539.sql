-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000001539
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/column


COMMENT ON COLUMN "agentic_db_encrypted".encrypted_secrets.owner_id IS 'User who owns this encrypted secret';

