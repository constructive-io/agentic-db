-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants 
  ADD COLUMN created_at timestamptz;

