-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/id/alterations/alt0000002171


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ALTER COLUMN id DROP NOT NULL;


