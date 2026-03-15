-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/target_type/alterations/alt0000002861


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ALTER COLUMN target_type DROP NOT NULL;


