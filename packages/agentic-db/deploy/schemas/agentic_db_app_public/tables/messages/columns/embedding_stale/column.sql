-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".messages 
  ADD COLUMN embedding_stale boolean;

