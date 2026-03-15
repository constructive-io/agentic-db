-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000336
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
  ALTER COLUMN entity_id SET NOT NULL;

