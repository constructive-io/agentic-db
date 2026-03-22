-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/alterations/alt0000006300
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/triggers/habits_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.trip_chunks 
  DISABLE ROW LEVEL SECURITY;

