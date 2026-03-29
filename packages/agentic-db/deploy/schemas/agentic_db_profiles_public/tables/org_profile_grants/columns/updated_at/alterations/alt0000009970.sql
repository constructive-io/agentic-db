-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/updated_at/alterations/alt0000009970
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/updated_at/column


ALTER TABLE agentic_db_profiles_public.org_profile_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

