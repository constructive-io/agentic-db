-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/id/alterations/alt0000001738


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  ALTER COLUMN id DROP NOT NULL;


