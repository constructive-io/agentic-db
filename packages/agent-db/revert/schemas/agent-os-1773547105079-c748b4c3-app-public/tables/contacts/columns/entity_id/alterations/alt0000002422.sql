-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/entity_id/alterations/alt0000002422


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


