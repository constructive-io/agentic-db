-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/constraints/tool_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.tool_chunks 
  ADD CONSTRAINT tool_chunks_pkey PRIMARY KEY (id);

