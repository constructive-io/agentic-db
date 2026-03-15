-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  ADD COLUMN updated_at timestamptz;

