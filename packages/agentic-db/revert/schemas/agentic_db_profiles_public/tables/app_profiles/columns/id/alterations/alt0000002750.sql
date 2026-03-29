-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/id/alterations/alt0000002750


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN id DROP NOT NULL;


