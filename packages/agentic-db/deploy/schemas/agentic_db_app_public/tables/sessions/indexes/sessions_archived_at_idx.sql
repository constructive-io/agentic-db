-- Deploy: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_archived_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/archived_at/column
-- requires: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_started_at_idx


CREATE INDEX sessions_archived_at_idx ON "agentic_db_app_public".sessions USING BTREE ( archived_at );

