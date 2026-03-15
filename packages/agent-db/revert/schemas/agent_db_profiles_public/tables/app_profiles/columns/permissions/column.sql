-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/column


ALTER TABLE agent_db_profiles_public.app_profiles 
  DROP COLUMN permissions RESTRICT;


