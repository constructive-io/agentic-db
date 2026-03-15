-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/message_range_start/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  DROP COLUMN message_range_start RESTRICT;


