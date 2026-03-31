-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/constraints/conversations_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ADD CONSTRAINT conversations_chunks_pkey PRIMARY KEY (id);

