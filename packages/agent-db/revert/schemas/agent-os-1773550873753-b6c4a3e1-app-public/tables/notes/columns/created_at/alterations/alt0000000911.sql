-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/created_at/alterations/alt0000000911


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN created_at DROP NOT NULL;


