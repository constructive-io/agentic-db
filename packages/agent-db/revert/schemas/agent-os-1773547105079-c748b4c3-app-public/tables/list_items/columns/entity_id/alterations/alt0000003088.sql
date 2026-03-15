-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/entity_id/alterations/alt0000003088


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  ALTER COLUMN entity_id DROP NOT NULL;


