-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/id/alterations/alt0000001446
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/id/column


ALTER TABLE "agent_db_simple_secrets".secrets 
  ALTER COLUMN id SET NOT NULL;

