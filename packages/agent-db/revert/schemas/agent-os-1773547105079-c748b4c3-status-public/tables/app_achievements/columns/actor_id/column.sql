-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  DROP COLUMN actor_id RESTRICT;


