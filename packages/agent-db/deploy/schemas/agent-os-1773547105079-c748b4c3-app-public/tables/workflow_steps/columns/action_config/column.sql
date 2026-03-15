-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000002805


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ADD COLUMN action_config jsonb;

