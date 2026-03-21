-- Deploy: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/agents/indexes/agents_last_active_at_idx


CREATE INDEX sessions_status_idx ON "agentic_db_app_public".sessions USING BTREE ( status );

