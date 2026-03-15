-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/max/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  DROP COLUMN max RESTRICT;


