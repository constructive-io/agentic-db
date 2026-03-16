-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN created_at timestamptz;

