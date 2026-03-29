-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/alterations/alt0000004809
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


ALTER TABLE agentic_db_simple_secrets.secrets 
  DISABLE ROW LEVEL SECURITY;

