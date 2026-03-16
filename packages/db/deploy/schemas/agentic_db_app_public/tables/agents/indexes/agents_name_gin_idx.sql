-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/lists/indexes/lists_name_gin_idx


CREATE INDEX agents_name_gin_idx ON "agentic_db_app_public".agents USING gin ( name gin_trgm_ops );

