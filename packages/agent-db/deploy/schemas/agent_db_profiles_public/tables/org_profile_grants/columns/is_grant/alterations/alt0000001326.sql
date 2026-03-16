-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/is_grant/alterations/alt0000001326
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/is_grant/column


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ALTER COLUMN is_grant SET NOT NULL;

