-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000001611


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


