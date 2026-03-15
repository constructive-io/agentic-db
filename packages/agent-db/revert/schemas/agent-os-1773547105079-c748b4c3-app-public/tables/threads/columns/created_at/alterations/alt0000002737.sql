-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/created_at/alterations/alt0000002737


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ALTER COLUMN created_at DROP NOT NULL;


