-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_update_tg


CREATE INDEX agent_chunks_entity_id_idx ON agentic_db_app_public.agent_chunks USING BTREE ( entity_id );

