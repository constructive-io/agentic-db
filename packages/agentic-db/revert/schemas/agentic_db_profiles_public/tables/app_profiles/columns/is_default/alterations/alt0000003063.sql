-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_default/alterations/alt0000003063


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN is_default DROP NOT NULL;


