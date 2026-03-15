-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/context_summary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  DROP COLUMN context_summary RESTRICT;


