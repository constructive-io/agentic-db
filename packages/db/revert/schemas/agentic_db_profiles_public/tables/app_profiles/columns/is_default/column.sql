-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_default/column


ALTER TABLE "agentic_db_profiles_public".app_profiles 
  DROP COLUMN is_default RESTRICT;


