-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/indexes/org_members_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/is_admin/column


CREATE INDEX org_members_is_admin_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_members USING BTREE ( is_admin );

