-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000001946
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt.entity_id IS E'References the entity (org or group) this permission resolution applies to';

