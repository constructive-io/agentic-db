-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/title/alterations/alt0000001457
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000001456


ALTER TABLE "agentic_db_app_public".reminders 
  ALTER COLUMN title SET NOT NULL;

