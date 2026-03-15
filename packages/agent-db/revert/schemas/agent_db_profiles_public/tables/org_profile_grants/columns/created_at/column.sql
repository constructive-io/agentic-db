-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/created_at/column


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  DROP COLUMN created_at RESTRICT;


