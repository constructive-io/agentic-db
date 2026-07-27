-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/url/column


CREATE INDEX raw_contact_urls_url_idx ON agentic_db_app_public.raw_contact_urls USING BTREE ( url );

