-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/constraints/org_achievements_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
  DROP CONSTRAINT org_achievements_actor_id_fkey;


