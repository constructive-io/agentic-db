-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".reminders 
  ADD COLUMN updated_at timestamptz;

