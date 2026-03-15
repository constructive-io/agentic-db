-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/updated_at/column


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  DROP COLUMN updated_at RESTRICT;


