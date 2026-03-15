-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000001611
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".app_limits 
  ALTER COLUMN actor_id SET NOT NULL;

