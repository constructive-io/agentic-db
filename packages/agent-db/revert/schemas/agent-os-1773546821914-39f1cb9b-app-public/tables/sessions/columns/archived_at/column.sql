-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/archived_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  DROP COLUMN archived_at RESTRICT;


