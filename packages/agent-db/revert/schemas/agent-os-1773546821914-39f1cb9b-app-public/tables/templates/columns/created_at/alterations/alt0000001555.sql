-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/created_at/alterations/alt0000001555


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ALTER COLUMN created_at DROP NOT NULL;


