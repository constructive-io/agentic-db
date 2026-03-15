-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/alterations/alt0000000443
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/column


ALTER TABLE agent_db_profiles_public.org_profiles 
  ALTER COLUMN permissions SET NOT NULL;

