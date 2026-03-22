-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/id/alterations/alt0000006367
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_enqueue_embedding_update_tg



ALTER TABLE agentic_db_app_public.goal_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

