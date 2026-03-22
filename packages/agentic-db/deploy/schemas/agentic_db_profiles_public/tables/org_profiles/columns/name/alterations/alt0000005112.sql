-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000005112
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/name/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN name SET NOT NULL;

