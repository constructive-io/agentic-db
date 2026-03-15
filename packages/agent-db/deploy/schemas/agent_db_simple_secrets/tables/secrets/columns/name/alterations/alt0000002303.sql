-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000002303
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/name/column


ALTER TABLE "agent_db_simple_secrets".secrets 
  ALTER COLUMN name SET NOT NULL;

