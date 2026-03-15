-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/created_at/alterations/alt0000002520


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ALTER COLUMN created_at DROP NOT NULL;


