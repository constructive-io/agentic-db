-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE INDEX messages_entity_id_idx ON "agentic_db_app_public".messages USING BTREE ( entity_id );

