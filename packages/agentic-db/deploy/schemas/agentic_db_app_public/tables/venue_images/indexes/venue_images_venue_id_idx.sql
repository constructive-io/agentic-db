-- Deploy: schemas/agentic_db_app_public/tables/venue_images/indexes/venue_images_venue_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/columns/venue_id/column


CREATE INDEX venue_images_venue_id_idx ON agentic_db_app_public.venue_images USING BTREE ( venue_id );

