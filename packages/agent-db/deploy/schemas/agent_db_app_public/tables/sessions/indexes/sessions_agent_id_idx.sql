-- Deploy: schemas/agent_db_app_public/tables/sessions/indexes/sessions_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/sessions/indexes/sessions_started_at_idx


CREATE INDEX sessions_agent_id_idx ON "agent_db_app_public".sessions USING BTREE ( agent_id );

