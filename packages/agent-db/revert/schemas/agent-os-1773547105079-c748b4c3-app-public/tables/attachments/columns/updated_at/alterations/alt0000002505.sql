-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/updated_at/alterations/alt0000002505


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN updated_at DROP NOT NULL;


