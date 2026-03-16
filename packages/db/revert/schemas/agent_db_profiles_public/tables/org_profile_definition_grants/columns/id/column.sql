-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/id/column


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  DROP COLUMN id RESTRICT;


