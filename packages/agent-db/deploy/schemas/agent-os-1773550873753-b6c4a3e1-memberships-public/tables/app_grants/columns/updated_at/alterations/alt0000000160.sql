-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/updated_at/alterations/alt0000000160
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

