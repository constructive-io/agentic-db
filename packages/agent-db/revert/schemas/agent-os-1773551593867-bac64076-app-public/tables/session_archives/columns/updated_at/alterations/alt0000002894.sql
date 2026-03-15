-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/updated_at/alterations/alt0000002894


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN updated_at DROP NOT NULL;


