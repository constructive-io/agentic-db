-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/created_at/alterations/alt0000009763
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/created_at/column


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN created_at SET DEFAULT now();

