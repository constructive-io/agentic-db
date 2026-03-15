-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/updated_at/alterations/alt0000003091


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  ALTER COLUMN updated_at DROP NOT NULL;


