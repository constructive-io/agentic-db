-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/archive_index/alterations/alt0000001288


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ALTER COLUMN archive_index DROP NOT NULL;


