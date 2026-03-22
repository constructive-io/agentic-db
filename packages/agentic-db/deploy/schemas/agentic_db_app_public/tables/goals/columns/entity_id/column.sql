-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/memories/triggers/memories_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".goals 
  ADD COLUMN entity_id uuid;

