-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/entity_id/alterations/alt0000002492


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  ALTER COLUMN entity_id DROP NOT NULL;


