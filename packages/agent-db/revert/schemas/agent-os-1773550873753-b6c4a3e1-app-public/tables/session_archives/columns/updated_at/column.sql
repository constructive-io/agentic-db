-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  DROP COLUMN updated_at RESTRICT;


