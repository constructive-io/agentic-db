-- Deploy: schemas/agentic_db_app_public/tables/event_images/indexes/event_images_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/event_images/columns/event_id/column


CREATE INDEX event_images_event_id_idx ON agentic_db_app_public.event_images USING BTREE ( event_id );

