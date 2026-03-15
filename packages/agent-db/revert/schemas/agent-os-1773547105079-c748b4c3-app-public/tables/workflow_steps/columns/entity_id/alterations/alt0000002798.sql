-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/entity_id/alterations/alt0000002798


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


