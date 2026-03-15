-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/id/alterations/alt0000000238


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ALTER COLUMN id DROP NOT NULL;


