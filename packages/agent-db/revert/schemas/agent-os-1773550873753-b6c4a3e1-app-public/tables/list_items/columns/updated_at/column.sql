-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
  DROP COLUMN updated_at RESTRICT;


