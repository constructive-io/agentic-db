-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/alterations/alt0000001758
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DISABLE ROW LEVEL SECURITY;

