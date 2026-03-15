-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  DROP COLUMN actor_id RESTRICT;


