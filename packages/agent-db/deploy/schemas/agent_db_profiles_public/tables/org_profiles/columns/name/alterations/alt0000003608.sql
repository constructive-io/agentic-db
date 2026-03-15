-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000003608
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN name SET NOT NULL;

