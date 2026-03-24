-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ENABLE ROW LEVEL SECURITY;

