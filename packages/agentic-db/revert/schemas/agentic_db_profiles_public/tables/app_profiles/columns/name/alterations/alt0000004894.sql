-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000004894


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN name DROP NOT NULL;


