-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/created_at/alterations/alt0000002756


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ALTER COLUMN created_at DROP NOT NULL;


