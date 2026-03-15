-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/updated_at/alterations/alt0000000198


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


