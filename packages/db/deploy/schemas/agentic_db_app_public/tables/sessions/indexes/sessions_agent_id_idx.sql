-- Deploy: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_started_at_idx


CREATE INDEX sessions_agent_id_idx ON "agentic_db_app_public".sessions USING BTREE ( agent_id );

