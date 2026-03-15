-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/indexes/org_memberships_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/column


CREATE INDEX org_memberships_is_owner_idx ON agent_db_memberships_public.org_memberships USING BTREE ( is_owner );

