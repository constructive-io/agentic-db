-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000002852
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002851


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN step_order SET NOT NULL;

