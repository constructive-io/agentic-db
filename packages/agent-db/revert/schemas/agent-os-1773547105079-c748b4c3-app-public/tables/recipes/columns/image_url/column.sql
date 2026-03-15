-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/image_url/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  DROP COLUMN image_url RESTRICT;


