-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/is_grant/alterations/alt0000002017
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants.is_grant IS E'True to grant ownership, false to revoke ownership';

