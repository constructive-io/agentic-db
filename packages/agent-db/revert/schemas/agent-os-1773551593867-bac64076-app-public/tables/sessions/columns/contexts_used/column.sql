-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/contexts_used/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN contexts_used RESTRICT;


