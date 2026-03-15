-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/id/column


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  DROP COLUMN id RESTRICT;


