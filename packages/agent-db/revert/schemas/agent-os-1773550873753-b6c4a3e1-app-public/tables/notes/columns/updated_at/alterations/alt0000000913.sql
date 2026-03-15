-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/updated_at/alterations/alt0000000913


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN updated_at DROP NOT NULL;


