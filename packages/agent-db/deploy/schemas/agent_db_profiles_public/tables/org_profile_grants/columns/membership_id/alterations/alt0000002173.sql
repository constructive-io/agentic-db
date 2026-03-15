-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/alterations/alt0000002173
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/column


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

