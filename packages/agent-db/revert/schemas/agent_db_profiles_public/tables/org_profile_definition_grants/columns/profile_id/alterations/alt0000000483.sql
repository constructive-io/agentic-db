-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000000483


ALTER TABLE agent_db_profiles_public.org_profile_definition_grants 
  ALTER COLUMN profile_id DROP NOT NULL;


