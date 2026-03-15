-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/updated_at/alterations/alt0000002758


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ALTER COLUMN updated_at DROP NOT NULL;


