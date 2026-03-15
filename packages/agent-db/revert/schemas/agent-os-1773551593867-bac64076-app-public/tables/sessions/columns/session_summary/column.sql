-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/session_summary/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN session_summary RESTRICT;


