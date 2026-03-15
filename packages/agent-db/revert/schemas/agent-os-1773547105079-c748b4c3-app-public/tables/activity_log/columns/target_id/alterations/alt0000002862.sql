-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/target_id/alterations/alt0000002862


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ALTER COLUMN target_id DROP NOT NULL;


