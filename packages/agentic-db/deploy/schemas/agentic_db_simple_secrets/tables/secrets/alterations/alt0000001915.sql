-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/alterations/alt0000001915
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_simple_secrets.secrets 
  DISABLE ROW LEVEL SECURITY;

