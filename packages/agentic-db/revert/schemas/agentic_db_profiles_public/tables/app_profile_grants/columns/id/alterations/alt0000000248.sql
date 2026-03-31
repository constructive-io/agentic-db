-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/id/alterations/alt0000000248


ALTER TABLE "agentic_db_profiles_public".app_profile_grants 
  ALTER COLUMN id DROP NOT NULL;


