-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/indexes/org_memberships_sprts_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_admin/column


CREATE INDEX org_memberships_sprts_is_admin_idx ON "agent_db_memberships_private".org_memberships_sprt USING BTREE ( is_admin );

