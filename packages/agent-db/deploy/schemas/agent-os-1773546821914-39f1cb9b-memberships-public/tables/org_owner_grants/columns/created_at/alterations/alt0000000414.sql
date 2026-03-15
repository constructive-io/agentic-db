-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/columns/created_at/alterations/alt0000000414
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_owner_grants 
  ALTER COLUMN created_at SET DEFAULT now();

