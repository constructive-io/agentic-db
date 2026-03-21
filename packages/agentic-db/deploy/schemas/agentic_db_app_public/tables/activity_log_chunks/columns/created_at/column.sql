-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ADD COLUMN created_at timestamptz;

