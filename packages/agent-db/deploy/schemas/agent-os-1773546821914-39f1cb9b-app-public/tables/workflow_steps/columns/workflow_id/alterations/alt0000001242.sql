-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/workflow_id/alterations/alt0000001242
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/workflow_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/updated_at/alterations/alt0000001241


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ALTER COLUMN workflow_id SET NOT NULL;

