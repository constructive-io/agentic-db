-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


ALTER TABLE "agentic_db_simple_secrets".secrets 
  ENABLE ROW LEVEL SECURITY;

