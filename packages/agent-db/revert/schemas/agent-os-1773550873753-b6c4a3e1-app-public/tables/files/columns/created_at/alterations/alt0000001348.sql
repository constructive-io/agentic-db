-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/columns/created_at/alterations/alt0000001348


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".files 
  ALTER COLUMN created_at DROP NOT NULL;


