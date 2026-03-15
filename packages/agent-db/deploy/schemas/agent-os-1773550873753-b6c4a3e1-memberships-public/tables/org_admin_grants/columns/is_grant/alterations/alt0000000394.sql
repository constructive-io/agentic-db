-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/columns/is_grant/alterations/alt0000000394
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".org_admin_grants.is_grant IS E'True to grant admin, false to revoke admin';

