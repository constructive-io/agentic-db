-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/entity_id/alterations/alt0000002985


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN entity_id DROP NOT NULL;


