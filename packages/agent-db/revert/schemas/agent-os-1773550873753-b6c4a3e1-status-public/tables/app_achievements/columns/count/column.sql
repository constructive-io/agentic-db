-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/count/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  DROP COLUMN count RESTRICT;


