-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/entity_id/column


CREATE INDEX conversation_chunks_entity_id_idx ON agentic_db_app_public.conversation_chunks USING BTREE ( entity_id );

