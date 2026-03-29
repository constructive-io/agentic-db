-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000003020


ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


