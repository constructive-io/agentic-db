-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/name/alterations/alt0000001801


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ALTER COLUMN name DROP NOT NULL;


