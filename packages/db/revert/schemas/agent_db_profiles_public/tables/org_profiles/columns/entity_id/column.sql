-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/entity_id/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DROP COLUMN entity_id RESTRICT;


