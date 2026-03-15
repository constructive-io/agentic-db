-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DROP COLUMN slug RESTRICT;


