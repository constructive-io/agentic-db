-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/updated_at/alterations/alt0000000913


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ALTER COLUMN updated_at DROP NOT NULL;


