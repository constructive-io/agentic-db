-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/created_at/alterations/alt0000001568


ALTER TABLE agentic_db_profiles_public.app_profile_permissions 
  ALTER COLUMN created_at DROP DEFAULT;


