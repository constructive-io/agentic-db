-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/columns/content/alterations/alt0000001799
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN content SET NOT NULL;

