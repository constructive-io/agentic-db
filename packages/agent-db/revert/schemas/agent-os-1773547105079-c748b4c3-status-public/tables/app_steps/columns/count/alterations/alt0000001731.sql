-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/columns/count/alterations/alt0000001731


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_steps 
  ALTER COLUMN count DROP NOT NULL;


