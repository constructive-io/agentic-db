-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_links/indexes/venue_links_venue_id_idx


CREATE INDEX contact_chunks_contact_id_idx ON "agentic_db_app_public".contact_chunks USING BTREE ( contact_id );

