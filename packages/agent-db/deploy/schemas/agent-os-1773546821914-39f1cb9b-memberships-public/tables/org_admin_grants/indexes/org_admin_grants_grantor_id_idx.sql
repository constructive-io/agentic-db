-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/indexes/org_admin_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/columns/grantor_id/column


CREATE INDEX org_admin_grants_grantor_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants USING BTREE ( grantor_id );

