-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/id/column


ALTER TABLE agentic_db_profiles_public.app_profiles 
  DROP COLUMN id RESTRICT;


