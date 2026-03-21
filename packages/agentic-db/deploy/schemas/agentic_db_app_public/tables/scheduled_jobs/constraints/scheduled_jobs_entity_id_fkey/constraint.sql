-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ADD CONSTRAINT scheduled_jobs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

