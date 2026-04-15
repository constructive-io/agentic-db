-- Deploy: schemas/agentic_db_app_public/tables/interactions/alterations/alt0000015269
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.interactions 
  DISABLE ROW LEVEL SECURITY;

