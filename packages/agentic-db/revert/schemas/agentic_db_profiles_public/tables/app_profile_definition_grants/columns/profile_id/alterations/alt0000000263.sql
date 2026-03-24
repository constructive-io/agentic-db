-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/alterations/alt0000000263


ALTER TABLE "agentic_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN profile_id DROP NOT NULL;


