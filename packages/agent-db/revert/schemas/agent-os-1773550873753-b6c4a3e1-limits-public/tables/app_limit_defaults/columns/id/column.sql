-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limit_defaults 
  DROP COLUMN id RESTRICT;


