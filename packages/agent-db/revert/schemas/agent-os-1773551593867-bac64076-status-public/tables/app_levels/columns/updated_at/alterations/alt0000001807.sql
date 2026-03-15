-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/updated_at/alterations/alt0000001807


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


