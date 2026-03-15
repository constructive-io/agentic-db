-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/created_at/alterations/alt0000002892


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN created_at DROP NOT NULL;


