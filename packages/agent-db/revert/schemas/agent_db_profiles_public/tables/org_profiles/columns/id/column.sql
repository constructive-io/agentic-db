-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/id/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DROP COLUMN id RESTRICT;


