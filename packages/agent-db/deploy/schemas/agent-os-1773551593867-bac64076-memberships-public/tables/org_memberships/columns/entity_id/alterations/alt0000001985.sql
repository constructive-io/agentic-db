-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/entity_id/alterations/alt0000001985
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_memberships.entity_id IS E'References the entity (org or group) this membership belongs to';

