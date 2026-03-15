-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/id/alterations/alt0000000418
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  ALTER COLUMN id SET NOT NULL;

