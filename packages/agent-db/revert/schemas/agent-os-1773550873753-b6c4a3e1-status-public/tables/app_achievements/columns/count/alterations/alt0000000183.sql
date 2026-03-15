-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/count/alterations/alt0000000183


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  ALTER COLUMN count DROP NOT NULL;


