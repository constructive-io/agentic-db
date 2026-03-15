-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/content/alterations/alt0000000915


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN content DROP NOT NULL;


