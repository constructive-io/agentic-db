-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/constraints/trip_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/triggers/habits_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".trip_chunks 
  ADD CONSTRAINT trip_chunks_pkey PRIMARY KEY (id);

