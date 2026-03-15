-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/created_at/alterations/alt0000002703


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ALTER COLUMN created_at DROP NOT NULL;


