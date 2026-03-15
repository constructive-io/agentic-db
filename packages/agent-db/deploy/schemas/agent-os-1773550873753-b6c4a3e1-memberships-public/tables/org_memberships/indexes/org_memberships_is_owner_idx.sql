-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/indexes/org_memberships_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/is_owner/column


CREATE INDEX org_memberships_is_owner_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships USING BTREE ( is_owner );

