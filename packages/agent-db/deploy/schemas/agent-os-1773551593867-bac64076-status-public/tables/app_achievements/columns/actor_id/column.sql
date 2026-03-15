-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ADD COLUMN actor_id uuid;

