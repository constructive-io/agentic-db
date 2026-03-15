-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/column


ALTER TABLE agent_db_profiles_public.org_profiles 
  DROP COLUMN permissions RESTRICT;


