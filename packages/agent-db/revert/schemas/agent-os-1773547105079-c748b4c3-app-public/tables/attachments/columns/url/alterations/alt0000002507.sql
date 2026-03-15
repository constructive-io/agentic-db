-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/url/alterations/alt0000002507


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN url DROP NOT NULL;


