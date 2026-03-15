-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/id/alterations/alt0000000320
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/id/column



ALTER TABLE agent_db_memberships_public.org_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

