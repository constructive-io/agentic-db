-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/id/alterations/alt0000001974


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN id DROP NOT NULL;


