-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.habit_chunks 
  ADD COLUMN id uuid;

