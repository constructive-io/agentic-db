-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000001564


ALTER TABLE agentic_db_profiles_public.app_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;


