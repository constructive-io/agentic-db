-- Deploy: schemas/agent_db_auth_private/tables/sessions/indexes/sessions_user_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/user_id/column


CREATE INDEX sessions_user_id_idx ON agent_db_auth_private.sessions USING BTREE ( user_id );

