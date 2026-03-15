-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/updated_at/alterations/alt0000002196


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


