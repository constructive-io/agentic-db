-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/events/indexes/events_main_image_id_idx


CREATE INDEX venues_main_image_id_idx ON agentic_db_app_public.venues USING BTREE ( main_image_id );

