-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/constraints/app_profiles_slug_key/constraint


ALTER TABLE agent_db_profiles_public.app_profiles 
  DROP CONSTRAINT app_profiles_slug_key;


