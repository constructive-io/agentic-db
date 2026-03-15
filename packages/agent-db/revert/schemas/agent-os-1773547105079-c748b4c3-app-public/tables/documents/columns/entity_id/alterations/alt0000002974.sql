-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/entity_id/alterations/alt0000002974


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ALTER COLUMN entity_id DROP NOT NULL;


