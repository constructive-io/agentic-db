-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/columns/created_at/alterations/alt0000001803
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

