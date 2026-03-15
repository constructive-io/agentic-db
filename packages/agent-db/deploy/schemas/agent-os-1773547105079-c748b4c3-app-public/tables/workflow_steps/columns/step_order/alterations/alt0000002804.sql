-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000002804
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002803


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ALTER COLUMN step_order SET NOT NULL;

