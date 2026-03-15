-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/id/column


ALTER TABLE agent_db_profiles_public.app_profile_definition_grants 
  DROP COLUMN id RESTRICT;


