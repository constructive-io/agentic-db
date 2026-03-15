-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_steps 
  DROP COLUMN updated_at RESTRICT;


