-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/constraints/agent_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ADD CONSTRAINT agent_chunks_pkey PRIMARY KEY (id);

