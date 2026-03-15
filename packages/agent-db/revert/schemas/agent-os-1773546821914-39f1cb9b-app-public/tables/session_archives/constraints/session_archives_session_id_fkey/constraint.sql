-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  DROP CONSTRAINT session_archives_session_id_fkey;


