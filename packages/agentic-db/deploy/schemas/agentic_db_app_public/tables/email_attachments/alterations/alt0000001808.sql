-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/alterations/alt0000001808
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".email_attachments 
  DISABLE ROW LEVEL SECURITY;

