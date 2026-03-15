-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/created_at/alterations/alt0000001747


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


