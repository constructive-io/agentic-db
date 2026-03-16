-- Deploy: schemas/agent_db_app_public/tables/sessions/indexes/sessions_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/started_at/column
-- requires: schemas/agent_db_app_public/tables/sessions/indexes/sessions_status_idx


CREATE INDEX sessions_started_at_idx ON "agent_db_app_public".sessions USING BTREE ( started_at );

