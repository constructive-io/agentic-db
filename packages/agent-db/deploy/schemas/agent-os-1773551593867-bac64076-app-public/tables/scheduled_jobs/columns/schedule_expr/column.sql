-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_expr/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000002818


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ADD COLUMN schedule_expr text;

