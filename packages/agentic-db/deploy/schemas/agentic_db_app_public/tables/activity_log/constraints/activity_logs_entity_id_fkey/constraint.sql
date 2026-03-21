-- Deploy: schemas/agentic_db_app_public/tables/activity_log/constraints/activity_logs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agentic_db_app_public".activity_log 
  ADD CONSTRAINT activity_logs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

