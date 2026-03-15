-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/column


ALTER TABLE agent_db_profiles_public.app_profile_definition_grants 
  DROP COLUMN is_grant RESTRICT;


