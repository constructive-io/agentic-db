-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/id/alterations/alt0000000380
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/id/column



ALTER TABLE agent_db_memberships_public.org_members 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

