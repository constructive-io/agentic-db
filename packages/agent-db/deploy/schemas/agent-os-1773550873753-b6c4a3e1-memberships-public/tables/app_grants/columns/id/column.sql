-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ADD COLUMN id uuid;

