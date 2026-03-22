-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/alterations/alt0000001296
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/column



ALTER TABLE "agentic_db_profiles_public".org_profiles 
    ALTER COLUMN is_default SET DEFAULT false;

