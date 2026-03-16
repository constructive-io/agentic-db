-- Deploy: schemas/agentic_db_app_public/tables/threads/alterations/alt0000001153
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/embedding/column


ALTER TABLE "agentic_db_app_public".threads 
  DISABLE ROW LEVEL SECURITY;

