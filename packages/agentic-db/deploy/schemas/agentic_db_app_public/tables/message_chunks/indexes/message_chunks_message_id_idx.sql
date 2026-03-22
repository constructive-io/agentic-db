-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_message_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/column


CREATE INDEX message_chunks_message_id_idx ON agentic_db_app_public.message_chunks USING BTREE ( message_id );

