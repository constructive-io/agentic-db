-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/entity_id/alterations/alt0000002857
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  ALTER COLUMN entity_id SET NOT NULL;

