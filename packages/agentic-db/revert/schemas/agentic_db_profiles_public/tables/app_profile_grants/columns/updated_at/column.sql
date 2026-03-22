-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/updated_at/column


ALTER TABLE "agentic_db_profiles_public".app_profile_grants 
  DROP COLUMN updated_at RESTRICT;


