-- Deploy: schemas/agentic_db_app_public/tables/interactions/alterations/alt0000000943
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/notes/triggers/notes_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".interactions 
  DISABLE ROW LEVEL SECURITY;

