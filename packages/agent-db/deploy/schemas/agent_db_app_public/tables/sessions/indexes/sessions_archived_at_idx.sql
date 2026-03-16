-- Deploy: schemas/agent_db_app_public/tables/sessions/indexes/sessions_archived_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/archived_at/column
-- requires: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx


CREATE INDEX sessions_archived_at_idx ON "agent_db_app_public".sessions USING BTREE ( archived_at );

