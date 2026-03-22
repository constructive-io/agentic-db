-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/entity_id/alterations/alt0000006286
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goals/triggers/goals_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.habits 
  ALTER COLUMN entity_id SET NOT NULL;

