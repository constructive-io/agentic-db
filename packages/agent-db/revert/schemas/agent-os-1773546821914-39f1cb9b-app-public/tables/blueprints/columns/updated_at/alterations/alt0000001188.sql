-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/updated_at/alterations/alt0000001188


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
  ALTER COLUMN updated_at DROP NOT NULL;


