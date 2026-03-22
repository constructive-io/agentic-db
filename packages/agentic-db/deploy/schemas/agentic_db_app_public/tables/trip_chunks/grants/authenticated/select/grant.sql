-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/triggers/habits_enqueue_embedding_update_tg


GRANT SELECT ON agentic_db_app_public.trip_chunks TO authenticated;

