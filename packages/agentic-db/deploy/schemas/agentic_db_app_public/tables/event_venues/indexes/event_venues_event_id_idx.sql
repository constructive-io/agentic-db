-- Deploy: schemas/agentic_db_app_public/tables/event_venues/indexes/event_venues_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/columns/event_id/column


CREATE INDEX event_venues_event_id_idx ON "agentic_db_app_public".event_venues USING BTREE ( event_id );

