-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ADD COLUMN id uuid;

