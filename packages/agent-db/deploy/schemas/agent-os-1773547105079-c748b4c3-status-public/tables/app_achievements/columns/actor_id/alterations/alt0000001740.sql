-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/actor_id/alterations/alt0000001740
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  ALTER COLUMN actor_id SET NOT NULL;

