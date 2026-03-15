-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000000440
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/column


ALTER TABLE agent_db_profiles_public.org_profiles 
  ALTER COLUMN slug SET NOT NULL;

