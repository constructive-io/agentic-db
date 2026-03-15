-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/is_grant/alterations/alt0000001737
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants.is_grant IS E'True to grant admin, false to revoke admin';

