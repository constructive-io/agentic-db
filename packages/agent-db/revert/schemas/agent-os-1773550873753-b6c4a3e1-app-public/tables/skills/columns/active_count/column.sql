-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/active_count/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  DROP COLUMN active_count RESTRICT;


