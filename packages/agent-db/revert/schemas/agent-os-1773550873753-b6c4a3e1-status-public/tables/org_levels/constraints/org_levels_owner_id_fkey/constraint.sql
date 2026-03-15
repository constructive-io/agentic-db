-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/constraints/org_levels_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_levels 
  DROP CONSTRAINT org_levels_owner_id_fkey;


