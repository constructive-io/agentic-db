-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000001444
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/column


ALTER TABLE "agentic_db_simple_secrets".secrets 
  ALTER COLUMN name SET NOT NULL;

