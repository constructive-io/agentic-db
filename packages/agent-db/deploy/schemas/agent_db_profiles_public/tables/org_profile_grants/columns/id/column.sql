-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  ADD COLUMN id uuid;

