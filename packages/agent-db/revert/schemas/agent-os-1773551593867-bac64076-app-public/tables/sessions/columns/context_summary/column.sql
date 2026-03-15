-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/context_summary/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN context_summary RESTRICT;


