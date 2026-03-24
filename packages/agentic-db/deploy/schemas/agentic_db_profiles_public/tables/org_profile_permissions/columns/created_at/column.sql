-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  ADD COLUMN created_at timestamptz;

