-- Deploy: schemas/agentic_db_status_public/tables/app_levels/alterations/alt0000001512
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.app_levels 
  DISABLE ROW LEVEL SECURITY;

