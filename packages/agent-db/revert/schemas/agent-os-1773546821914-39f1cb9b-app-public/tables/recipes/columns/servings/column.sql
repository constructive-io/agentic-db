-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/servings/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  DROP COLUMN servings RESTRICT;


