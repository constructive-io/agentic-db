-- Deploy: schemas/agentic_db_app_public/tables/messages/alterations/alt0000001445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".messages 
  DISABLE ROW LEVEL SECURITY;

