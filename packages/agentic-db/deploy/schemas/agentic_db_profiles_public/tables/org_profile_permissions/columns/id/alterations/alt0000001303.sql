-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/id/alterations/alt0000001303
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/id/column


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  ALTER COLUMN id SET NOT NULL;

