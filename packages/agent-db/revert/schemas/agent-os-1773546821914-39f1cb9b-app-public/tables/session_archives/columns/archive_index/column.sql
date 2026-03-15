-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/archive_index/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  DROP COLUMN archive_index RESTRICT;


