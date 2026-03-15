-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/entity_id/alterations/alt0000002502


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN entity_id DROP NOT NULL;


