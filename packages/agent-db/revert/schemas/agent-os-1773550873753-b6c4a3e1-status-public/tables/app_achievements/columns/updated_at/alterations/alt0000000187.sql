-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/updated_at/alterations/alt0000000187


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


