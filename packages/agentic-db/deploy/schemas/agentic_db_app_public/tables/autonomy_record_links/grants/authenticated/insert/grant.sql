-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


GRANT INSERT ON agentic_db_app_public.autonomy_record_links TO authenticated;

