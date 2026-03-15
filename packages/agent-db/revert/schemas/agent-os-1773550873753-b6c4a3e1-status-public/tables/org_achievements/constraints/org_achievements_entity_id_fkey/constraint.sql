-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/constraints/org_achievements_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  DROP CONSTRAINT org_achievements_entity_id_fkey;


