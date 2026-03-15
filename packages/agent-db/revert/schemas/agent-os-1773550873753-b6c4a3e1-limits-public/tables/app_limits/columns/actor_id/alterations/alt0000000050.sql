-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000000050


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


