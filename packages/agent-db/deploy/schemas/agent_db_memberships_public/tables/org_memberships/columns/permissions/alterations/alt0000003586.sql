-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/alterations/alt0000003586
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/column



ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

