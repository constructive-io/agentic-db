-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000001340


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


