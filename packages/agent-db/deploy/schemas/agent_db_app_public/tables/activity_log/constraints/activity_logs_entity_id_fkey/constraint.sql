-- Deploy: schemas/agent_db_app_public/tables/activity_log/constraints/activity_logs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE agent_db_app_public.activity_log 
  ADD CONSTRAINT activity_logs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

