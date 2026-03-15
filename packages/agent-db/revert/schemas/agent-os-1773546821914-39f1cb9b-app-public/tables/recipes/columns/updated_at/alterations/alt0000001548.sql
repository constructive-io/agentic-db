-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/updated_at/alterations/alt0000001548


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ALTER COLUMN updated_at DROP NOT NULL;


