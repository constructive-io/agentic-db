-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_main_image_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/embedding_stale/alterations/alt0000001101


CREATE INDEX contacts_main_image_id_idx ON "agentic_db_app_public".contacts USING BTREE ( main_image_id );

