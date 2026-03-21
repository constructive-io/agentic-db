-- Deploy: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/entity_id/column


CREATE INDEX session_archives_entity_id_idx ON agentic_db_app_public.session_archives USING BTREE ( entity_id );

