-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000000836
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/actor_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();

