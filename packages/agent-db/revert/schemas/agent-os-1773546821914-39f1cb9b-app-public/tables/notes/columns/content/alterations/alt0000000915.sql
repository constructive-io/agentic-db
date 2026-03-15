-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/content/alterations/alt0000000915


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ALTER COLUMN content DROP NOT NULL;


