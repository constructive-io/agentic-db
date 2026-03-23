-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/constraints/agents_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agents_chunks 
  ADD CONSTRAINT agents_chunks_pkey PRIMARY KEY (id);

