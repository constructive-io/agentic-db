-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000002805


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ALTER COLUMN action_type DROP NOT NULL;


