-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/created_at/alterations/alt0000001204
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/created_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ALTER COLUMN created_at SET NOT NULL;

