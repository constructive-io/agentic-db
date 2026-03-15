-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/name/alterations/alt0000000192


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_levels 
  ALTER COLUMN name DROP NOT NULL;


