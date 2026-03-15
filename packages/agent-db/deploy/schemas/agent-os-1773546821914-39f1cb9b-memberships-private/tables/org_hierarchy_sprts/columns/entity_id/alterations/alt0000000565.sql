-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000000565
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN entity_id SET NOT NULL;

