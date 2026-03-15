-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000000381
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/is_admin/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  ALTER COLUMN is_admin SET NOT NULL;

