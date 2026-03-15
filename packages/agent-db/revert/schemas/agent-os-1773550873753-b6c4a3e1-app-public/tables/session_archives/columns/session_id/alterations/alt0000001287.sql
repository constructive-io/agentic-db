-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/session_id/alterations/alt0000001287


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  ALTER COLUMN session_id DROP NOT NULL;


