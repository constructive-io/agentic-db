-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ADD COLUMN updated_at timestamptz;

