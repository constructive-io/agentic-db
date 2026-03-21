-- Deploy: schemas/agentic_db_app_public/tables/ideas/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg


GRANT INSERT ON agentic_db_app_public.ideas TO authenticated;

