-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000002397
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/actor_id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();

