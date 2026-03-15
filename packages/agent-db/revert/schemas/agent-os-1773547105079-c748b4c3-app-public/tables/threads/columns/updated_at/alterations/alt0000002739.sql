-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/updated_at/alterations/alt0000002739


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ALTER COLUMN updated_at DROP NOT NULL;


