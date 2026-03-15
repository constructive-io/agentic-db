-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/created_at/alterations/alt0000001186


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


