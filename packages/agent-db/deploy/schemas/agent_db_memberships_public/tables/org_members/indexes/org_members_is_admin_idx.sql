-- Deploy: schemas/agent_db_memberships_public/tables/org_members/indexes/org_members_is_admin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/column


CREATE INDEX org_members_is_admin_idx ON agent_db_memberships_public.org_members USING BTREE ( is_admin );

