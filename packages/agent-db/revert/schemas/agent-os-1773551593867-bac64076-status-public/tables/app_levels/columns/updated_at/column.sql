-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  DROP COLUMN updated_at RESTRICT;


