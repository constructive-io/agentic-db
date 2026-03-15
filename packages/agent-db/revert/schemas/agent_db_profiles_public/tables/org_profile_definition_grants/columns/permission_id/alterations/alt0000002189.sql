-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/permission_id/alterations/alt0000002189


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


