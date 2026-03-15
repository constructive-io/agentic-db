-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/origin/alterations/alt0000002447
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/origin/column



ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

