-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000342
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults.entity_id IS 'References the entity these membership defaults apply to';

