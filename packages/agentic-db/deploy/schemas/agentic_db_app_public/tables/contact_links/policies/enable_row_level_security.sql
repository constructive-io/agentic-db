-- Deploy: schemas/agentic_db_app_public/tables/contact_links/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/triggers/interaction_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.contact_links 
  ENABLE ROW LEVEL SECURITY;

