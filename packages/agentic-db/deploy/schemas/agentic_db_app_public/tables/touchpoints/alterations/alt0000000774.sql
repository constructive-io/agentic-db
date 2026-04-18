-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/alterations/alt0000000774
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.touchpoints 
  DISABLE ROW LEVEL SECURITY;

