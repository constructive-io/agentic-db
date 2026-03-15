-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000001244
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/action_type/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000001243


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ALTER COLUMN action_type SET NOT NULL;

