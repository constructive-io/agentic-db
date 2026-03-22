-- Deploy: schemas/agentic_db_app_public/tables/contact_links/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/triggers/interaction_chunks_enqueue_embedding_update_tg


GRANT SELECT ON agentic_db_app_public.contact_links TO authenticated;

