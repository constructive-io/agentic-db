-- Deploy: schemas/agentic_db_app_public/tables/contact_links/indexes/contact_links_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/triggers/interaction_chunks_enqueue_embedding_update_tg


CREATE INDEX contact_links_entity_id_idx ON "agentic_db_app_public".contact_links USING BTREE ( entity_id );

