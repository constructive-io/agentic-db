-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  DROP COLUMN id RESTRICT;


