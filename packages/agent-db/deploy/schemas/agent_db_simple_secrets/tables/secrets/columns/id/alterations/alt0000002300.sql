-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/id/alterations/alt0000002300
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/id/column


COMMENT ON COLUMN "agent_db_simple_secrets".secrets.id IS 'Unique identifier for this secret entry';

