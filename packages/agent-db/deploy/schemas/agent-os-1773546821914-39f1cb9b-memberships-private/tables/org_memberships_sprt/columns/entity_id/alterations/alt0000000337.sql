-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000337
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt.entity_id IS E'References the entity (org or group) this permission resolution applies to';

