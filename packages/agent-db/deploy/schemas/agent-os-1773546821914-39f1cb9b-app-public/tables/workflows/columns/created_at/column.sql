-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ADD COLUMN created_at timestamptz;

