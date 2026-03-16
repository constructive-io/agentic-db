-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_approved/alterations/alt0000001202
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_approved/column



ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN is_approved SET DEFAULT false;

