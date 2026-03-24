-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000001549


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN permissions DROP NOT NULL;


