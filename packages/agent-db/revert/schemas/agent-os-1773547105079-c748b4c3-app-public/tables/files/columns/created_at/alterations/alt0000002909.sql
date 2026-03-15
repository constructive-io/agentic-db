-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/created_at/alterations/alt0000002909


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  ALTER COLUMN created_at DROP NOT NULL;


