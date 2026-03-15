-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  ADD COLUMN actor_id uuid;

