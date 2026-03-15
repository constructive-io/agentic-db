-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/entity_id/alterations/alt0000000376
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships.entity_id IS E'References the entity (org or group) this membership belongs to';

