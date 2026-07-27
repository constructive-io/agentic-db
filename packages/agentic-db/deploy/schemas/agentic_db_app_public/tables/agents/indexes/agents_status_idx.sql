-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/status/column


CREATE INDEX agents_status_idx ON agentic_db_app_public.agents USING BTREE ( status );

