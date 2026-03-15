-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/created_at/alterations/alt0000001806


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ALTER COLUMN created_at DROP DEFAULT;


