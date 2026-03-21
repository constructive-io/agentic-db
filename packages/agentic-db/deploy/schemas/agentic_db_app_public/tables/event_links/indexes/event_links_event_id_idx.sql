-- Deploy: schemas/agentic_db_app_public/tables/event_links/indexes/event_links_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/event_id/column
-- requires: schemas/agentic_db_app_public/tables/company_links/indexes/company_links_company_id_idx


CREATE INDEX event_links_event_id_idx ON agentic_db_app_public.event_links USING BTREE ( event_id );

