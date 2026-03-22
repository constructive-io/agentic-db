-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/column


ALTER TABLE "agentic_db_profiles_public".app_profiles 
  DROP COLUMN name RESTRICT;


