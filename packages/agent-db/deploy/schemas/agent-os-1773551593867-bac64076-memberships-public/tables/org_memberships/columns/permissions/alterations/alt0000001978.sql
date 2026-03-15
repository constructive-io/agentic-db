-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/permissions/alterations/alt0000001978
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_memberships.permissions IS E'Aggregated permission bitmask combining profile-based and directly granted permissions';

