-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/alterations/alt0000000444
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/column



ALTER TABLE agent_db_profiles_public.org_profiles 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

