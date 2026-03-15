-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/session_id/alterations/alt0000002896


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN session_id DROP NOT NULL;


