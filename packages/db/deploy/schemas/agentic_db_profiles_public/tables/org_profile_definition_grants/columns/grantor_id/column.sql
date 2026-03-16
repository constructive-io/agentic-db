-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/grantor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE "agentic_db_profiles_public".org_profile_definition_grants 
  ADD COLUMN grantor_id uuid;

