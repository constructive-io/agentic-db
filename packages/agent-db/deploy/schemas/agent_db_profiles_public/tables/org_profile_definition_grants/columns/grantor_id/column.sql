-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/grantor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ADD COLUMN grantor_id uuid;

