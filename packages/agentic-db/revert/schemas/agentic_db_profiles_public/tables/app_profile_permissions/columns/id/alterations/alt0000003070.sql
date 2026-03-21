-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/id/alterations/alt0000003070


ALTER TABLE agentic_db_profiles_public.app_profile_permissions 
  ALTER COLUMN id DROP NOT NULL;


