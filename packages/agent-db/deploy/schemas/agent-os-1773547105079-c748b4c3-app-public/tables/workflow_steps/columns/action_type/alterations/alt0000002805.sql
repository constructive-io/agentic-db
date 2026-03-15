-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000002805
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_type/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000002804


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ALTER COLUMN action_type SET NOT NULL;

