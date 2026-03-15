-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  ADD COLUMN actor_id uuid;

