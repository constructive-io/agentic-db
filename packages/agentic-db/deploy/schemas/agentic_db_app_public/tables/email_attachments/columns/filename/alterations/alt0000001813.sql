-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/filename/alterations/alt0000001813
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/filename/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN filename SET NOT NULL;

