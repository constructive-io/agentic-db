-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000002302
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/column


COMMENT ON COLUMN "agent_db_simple_secrets".secrets.owner_id IS 'User who owns this secret';

