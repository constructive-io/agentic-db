-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/entity_id/alterations/alt0000006381
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

