-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000001659


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


