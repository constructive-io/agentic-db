-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/raw_messages/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  DROP COLUMN raw_messages RESTRICT;


