-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/created_at/alterations/alt0000000197


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  ALTER COLUMN created_at DROP DEFAULT;


