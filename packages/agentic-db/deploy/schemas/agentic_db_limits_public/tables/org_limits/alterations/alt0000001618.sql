-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/alterations/alt0000001618
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_limits_public.org_limits 
  DISABLE ROW LEVEL SECURITY;

