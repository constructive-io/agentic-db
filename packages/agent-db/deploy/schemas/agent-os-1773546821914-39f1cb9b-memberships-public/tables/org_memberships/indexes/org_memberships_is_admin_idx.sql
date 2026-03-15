-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/indexes/org_memberships_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_admin/column


CREATE INDEX org_memberships_is_admin_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships USING BTREE ( is_admin );

