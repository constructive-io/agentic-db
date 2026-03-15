-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  DROP COLUMN name RESTRICT;


