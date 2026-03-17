-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/created_at/alterations/alt0000001453
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/reminders/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".reminders 
  ALTER COLUMN created_at SET NOT NULL;

