-- Deploy: schemas/agentic_db_app_public/tables/contact_links/indexes/contact_links_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_contact_id_idx


CREATE INDEX contact_links_contact_id_idx ON "agentic_db_app_public".contact_links USING BTREE ( contact_id );

