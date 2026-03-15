-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  DROP CONSTRAINT app_levels_owner_id_fkey;


