-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  DROP COLUMN entity_id RESTRICT;


