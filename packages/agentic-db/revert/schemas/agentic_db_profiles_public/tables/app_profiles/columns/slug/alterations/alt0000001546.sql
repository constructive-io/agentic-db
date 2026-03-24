-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/slug/alterations/alt0000001546


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN slug DROP NOT NULL;


