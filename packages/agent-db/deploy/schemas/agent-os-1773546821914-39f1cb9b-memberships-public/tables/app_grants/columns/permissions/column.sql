-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/permissions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  ADD COLUMN permissions bit(24);

