-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/session_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  DROP COLUMN session_id RESTRICT;


