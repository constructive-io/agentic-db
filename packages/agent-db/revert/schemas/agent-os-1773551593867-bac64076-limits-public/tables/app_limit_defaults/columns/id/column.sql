-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limit_defaults 
  DROP COLUMN id RESTRICT;


