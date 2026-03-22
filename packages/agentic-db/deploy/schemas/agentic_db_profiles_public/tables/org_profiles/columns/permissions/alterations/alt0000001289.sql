-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/permissions/alterations/alt0000001289
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/permissions/column


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  ALTER COLUMN permissions SET NOT NULL;

