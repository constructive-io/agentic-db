-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000010089
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/column


COMMENT ON COLUMN agentic_db_simple_secrets.secrets.owner_id IS 'User who owns this secret';

