-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/created_at/alterations/alt0000002571
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/created_at/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN created_at SET DEFAULT now();

