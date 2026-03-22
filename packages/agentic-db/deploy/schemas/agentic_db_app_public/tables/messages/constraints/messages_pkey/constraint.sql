-- Deploy: schemas/agentic_db_app_public/tables/messages/constraints/messages_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".messages 
  ADD CONSTRAINT messages_pkey PRIMARY KEY (id);

