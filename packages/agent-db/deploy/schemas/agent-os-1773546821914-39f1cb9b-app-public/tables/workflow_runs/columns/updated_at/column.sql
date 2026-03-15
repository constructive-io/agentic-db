-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
  ADD COLUMN updated_at timestamptz;

