-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_default/column


ALTER TABLE agent_db_profiles_public.app_profiles 
  DROP COLUMN is_default RESTRICT;


