-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  DROP CONSTRAINT app_levels_owner_id_fkey;


