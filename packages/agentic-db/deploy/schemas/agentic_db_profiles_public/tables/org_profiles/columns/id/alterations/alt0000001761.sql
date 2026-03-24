-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/id/alterations/alt0000001761
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/id/column



ALTER TABLE agentic_db_profiles_public.org_profiles 
    ALTER COLUMN id SET DEFAULT uuidv7();

