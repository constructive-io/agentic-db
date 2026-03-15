-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/list_id/alterations/alt0000003093


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  ALTER COLUMN list_id DROP NOT NULL;


