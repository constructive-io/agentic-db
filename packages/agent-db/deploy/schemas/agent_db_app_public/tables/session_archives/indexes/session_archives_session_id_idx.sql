-- Deploy: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/session_id/column
-- requires: schemas/agent_db_app_public/tables/context_relations/indexes/context_relations_to_id_idx


CREATE INDEX session_archives_session_id_idx ON agent_db_app_public.session_archives USING BTREE ( session_id );

