-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/updated_at/alterations/alt0000002857


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ALTER COLUMN updated_at DROP NOT NULL;


