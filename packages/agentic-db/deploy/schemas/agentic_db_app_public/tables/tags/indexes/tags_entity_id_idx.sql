-- Deploy: schemas/agentic_db_app_public/tables/tags/indexes/tags_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_enqueue_embedding_update_tg


CREATE INDEX tags_entity_id_idx ON "agentic_db_app_public".tags USING BTREE ( entity_id );

