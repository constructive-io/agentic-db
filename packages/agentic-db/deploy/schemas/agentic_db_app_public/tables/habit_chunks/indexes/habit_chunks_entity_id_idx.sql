-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_enqueue_embedding_update_tg


CREATE INDEX habit_chunks_entity_id_idx ON agentic_db_app_public.habit_chunks USING BTREE ( entity_id );

