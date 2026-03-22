-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000001434


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


