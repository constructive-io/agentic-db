-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/created_at/alterations/alt0000000315
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
  ALTER COLUMN created_at SET DEFAULT now();

