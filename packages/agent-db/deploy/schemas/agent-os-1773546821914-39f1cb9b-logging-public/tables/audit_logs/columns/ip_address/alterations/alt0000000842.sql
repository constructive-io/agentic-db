-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/ip_address/alterations/alt0000000842
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/ip_address/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
    ALTER COLUMN ip_address SET DEFAULT jwt_public.current_ip_address();

