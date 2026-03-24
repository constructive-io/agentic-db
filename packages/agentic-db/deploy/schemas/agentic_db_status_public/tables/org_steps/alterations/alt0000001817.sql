-- Deploy: schemas/agentic_db_status_public/tables/org_steps/alterations/alt0000001817
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.org_steps 
  DISABLE ROW LEVEL SECURITY;

