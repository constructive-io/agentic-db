-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/logs_path/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".scheduled_jobs TO authenticated;

