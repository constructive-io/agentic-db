-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/columns/created_at/alterations/alt0000001734


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_steps 
  ALTER COLUMN created_at DROP DEFAULT;


