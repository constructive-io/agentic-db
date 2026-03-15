-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_active/alterations/alt0000000358
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_active/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  ALTER COLUMN is_active SET NOT NULL;

