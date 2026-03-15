-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ADD COLUMN updated_at timestamptz;

