-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/created_at/alterations/alt0000003622
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/created_at/column


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN created_at SET DEFAULT now();

