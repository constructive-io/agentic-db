-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/alterations/alt0000001771
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/column



ALTER TABLE agentic_db_profiles_public.org_profiles 
    ALTER COLUMN is_system SET DEFAULT false;

