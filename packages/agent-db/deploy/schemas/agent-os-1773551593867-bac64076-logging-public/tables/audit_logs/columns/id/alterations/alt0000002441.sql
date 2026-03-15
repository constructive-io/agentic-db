-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/id/alterations/alt0000002441
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

