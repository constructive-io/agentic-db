-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/constraints/skill_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/triggers/rule_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ADD CONSTRAINT skill_chunks_pkey PRIMARY KEY (id);

