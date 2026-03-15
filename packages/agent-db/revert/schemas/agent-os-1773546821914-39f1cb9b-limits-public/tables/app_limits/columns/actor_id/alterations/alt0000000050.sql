-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000000050


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


