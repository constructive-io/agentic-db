-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000003321
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/permissions/column



ALTER TABLE "agent_db_memberships_public".app_grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

