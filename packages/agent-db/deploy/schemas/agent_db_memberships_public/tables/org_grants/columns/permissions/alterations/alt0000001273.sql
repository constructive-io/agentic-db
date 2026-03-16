-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000001273
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/column



ALTER TABLE "agent_db_memberships_public".org_grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

