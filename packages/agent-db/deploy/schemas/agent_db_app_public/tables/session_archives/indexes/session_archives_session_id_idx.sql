-- Deploy: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/session_id/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx


CREATE INDEX session_archives_session_id_idx ON "agent_db_app_public".session_archives USING BTREE ( session_id );

