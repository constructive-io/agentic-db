-- Deploy: schemas/agentic_db_app_public/tables/venues/alterations/alt0000000073
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.venues 
  DISABLE ROW LEVEL SECURITY;

