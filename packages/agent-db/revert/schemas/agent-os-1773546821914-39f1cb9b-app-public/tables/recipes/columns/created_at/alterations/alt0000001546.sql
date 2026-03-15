-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/created_at/alterations/alt0000001546


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ALTER COLUMN created_at DROP NOT NULL;


