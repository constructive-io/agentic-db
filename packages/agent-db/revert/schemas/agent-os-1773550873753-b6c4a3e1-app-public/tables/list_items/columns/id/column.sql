-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
  DROP COLUMN id RESTRICT;


