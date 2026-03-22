-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/triggers/contact_chunks_enqueue_embedding_update_tg


GRANT INSERT ON agentic_db_app_public.company_chunks TO authenticated;

