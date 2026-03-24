-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/thread_id/alterations/alt0000001785
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/thread_id/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN thread_id SET NOT NULL;

