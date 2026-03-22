-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/id/alterations/alt0000006078
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/triggers/runtime_log_chunks_enqueue_embedding_update_tg



ALTER TABLE agentic_db_app_public.conversations 
    ALTER COLUMN id SET DEFAULT uuidv7();

