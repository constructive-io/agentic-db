-- Deploy: schemas/agentic_db_app_public/tables/lists/indexes/lists_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_name_gin_idx


CREATE INDEX lists_name_gin_idx ON "agentic_db_app_public".lists USING gin ( name gin_trgm_ops );

