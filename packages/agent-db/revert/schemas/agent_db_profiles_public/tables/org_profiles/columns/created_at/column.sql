-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/created_at/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DROP COLUMN created_at RESTRICT;


