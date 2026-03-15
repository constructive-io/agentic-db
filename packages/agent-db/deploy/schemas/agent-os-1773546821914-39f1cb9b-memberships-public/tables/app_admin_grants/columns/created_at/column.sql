-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
  ADD COLUMN created_at timestamptz;

