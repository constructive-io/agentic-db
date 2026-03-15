-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/user_agent/alterations/alt0000002401
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/user_agent/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
    ALTER COLUMN user_agent SET DEFAULT jwt_public.current_user_agent();

