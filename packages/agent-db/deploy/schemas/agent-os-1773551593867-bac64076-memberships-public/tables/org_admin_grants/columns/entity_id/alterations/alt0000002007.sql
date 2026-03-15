-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/entity_id/alterations/alt0000002007
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants.entity_id IS E'The entity (org or group) this admin grant applies to';

