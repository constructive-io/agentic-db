-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/updated_at/alterations/alt0000002801


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ALTER COLUMN updated_at DROP NOT NULL;


