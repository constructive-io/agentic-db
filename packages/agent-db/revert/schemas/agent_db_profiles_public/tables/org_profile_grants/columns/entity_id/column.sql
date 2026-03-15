-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/entity_id/column


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  DROP COLUMN entity_id RESTRICT;


