-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000000598
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/column


COMMENT ON COLUMN agent_db_simple_secrets.secrets.owner_id IS 'User who owns this secret';

