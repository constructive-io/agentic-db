-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/entity_id/alterations/alt0000000386
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ALTER COLUMN entity_id SET NOT NULL;

