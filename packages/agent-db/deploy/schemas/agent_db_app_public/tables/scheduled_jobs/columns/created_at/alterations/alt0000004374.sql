-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/created_at/alterations/alt0000004374
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN created_at SET NOT NULL;

