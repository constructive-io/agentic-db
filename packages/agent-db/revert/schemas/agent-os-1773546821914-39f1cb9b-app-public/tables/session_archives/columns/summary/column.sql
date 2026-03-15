-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/summary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  DROP COLUMN summary RESTRICT;


