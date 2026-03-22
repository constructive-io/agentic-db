-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/content/alterations/alt0000001777
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/chunk_index/alterations/alt0000001776


ALTER TABLE "agentic_db_app_public".habit_chunks 
  ALTER COLUMN content SET NOT NULL;

