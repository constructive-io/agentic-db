-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/id/alterations/alt0000001257
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/id/column



ALTER TABLE "agent_db_memberships_public".org_owner_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

