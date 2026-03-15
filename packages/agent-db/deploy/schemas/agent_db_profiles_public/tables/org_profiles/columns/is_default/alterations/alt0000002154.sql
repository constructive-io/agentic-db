-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_default/alterations/alt0000002154
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_default/column



ALTER TABLE "agent_db_profiles_public".org_profiles 
    ALTER COLUMN is_default SET DEFAULT false;

