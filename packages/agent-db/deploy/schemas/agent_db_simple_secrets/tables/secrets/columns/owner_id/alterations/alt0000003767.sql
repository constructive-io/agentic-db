-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000003767
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/column


ALTER TABLE "agent_db_simple_secrets".secrets 
  ALTER COLUMN owner_id SET NOT NULL;

