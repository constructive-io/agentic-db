-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/updated_at/alterations/alt0000001948


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


