-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ADD COLUMN created_at timestamptz;

