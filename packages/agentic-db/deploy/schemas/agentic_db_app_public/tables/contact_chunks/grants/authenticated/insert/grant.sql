-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000003767


GRANT INSERT ON agentic_db_app_public.contact_chunks TO authenticated;

