-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000012445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN slug SET NOT NULL;

