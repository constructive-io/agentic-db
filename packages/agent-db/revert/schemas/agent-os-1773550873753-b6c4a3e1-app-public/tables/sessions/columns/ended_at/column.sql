-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/ended_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  DROP COLUMN ended_at RESTRICT;


