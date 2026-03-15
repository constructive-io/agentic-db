-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/end_line/column


ALTER TABLE agent_db_app_public.chunks 
  ADD COLUMN embedding_text text;

