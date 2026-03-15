-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/name/alterations/alt0000000181


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  ALTER COLUMN name DROP NOT NULL;


