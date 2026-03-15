-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/indexes/org_memberships_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/is_admin/column


CREATE INDEX org_memberships_is_admin_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships USING BTREE ( is_admin );

