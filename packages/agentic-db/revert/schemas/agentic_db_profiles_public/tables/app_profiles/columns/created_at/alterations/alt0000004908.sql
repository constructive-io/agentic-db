-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/created_at/alterations/alt0000004908


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


