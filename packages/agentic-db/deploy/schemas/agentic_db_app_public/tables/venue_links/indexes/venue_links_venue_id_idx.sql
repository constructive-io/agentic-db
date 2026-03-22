-- Deploy: schemas/agentic_db_app_public/tables/venue_links/indexes/venue_links_venue_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column
-- requires: schemas/agentic_db_app_public/tables/event_links/indexes/event_links_event_id_idx


CREATE INDEX venue_links_venue_id_idx ON "agentic_db_app_public".venue_links USING BTREE ( venue_id );

