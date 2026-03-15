-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/description/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_levels 
  DROP COLUMN description RESTRICT;


