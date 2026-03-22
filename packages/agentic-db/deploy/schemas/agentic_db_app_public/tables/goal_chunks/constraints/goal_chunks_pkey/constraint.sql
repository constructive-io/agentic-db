-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/constraints/goal_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ADD CONSTRAINT goal_chunks_pkey PRIMARY KEY (id);

