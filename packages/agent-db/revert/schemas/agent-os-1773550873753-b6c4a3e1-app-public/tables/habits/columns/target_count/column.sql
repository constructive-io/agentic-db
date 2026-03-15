-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/target_count/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habits 
  DROP COLUMN target_count RESTRICT;


