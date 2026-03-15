-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/image_url/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  DROP COLUMN image_url RESTRICT;


