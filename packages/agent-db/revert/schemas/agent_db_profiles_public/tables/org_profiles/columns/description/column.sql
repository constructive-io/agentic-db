-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/description/column


ALTER TABLE agent_db_profiles_public.org_profiles 
  DROP COLUMN description RESTRICT;


