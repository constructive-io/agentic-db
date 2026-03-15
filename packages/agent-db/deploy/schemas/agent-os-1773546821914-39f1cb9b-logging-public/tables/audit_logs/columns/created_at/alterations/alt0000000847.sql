-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000000847
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/created_at/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
    ALTER COLUMN created_at SET DEFAULT current_timestamp;

