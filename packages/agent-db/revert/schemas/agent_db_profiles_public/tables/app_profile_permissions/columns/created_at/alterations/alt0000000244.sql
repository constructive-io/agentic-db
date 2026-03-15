-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/created_at/alterations/alt0000000244


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ALTER COLUMN created_at DROP DEFAULT;


