-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/agents/indexes/agents_name_gin_idx


CREATE INDEX repositories_name_gin_idx ON "agentic_db_app_public".repositories USING gin ( name gin_trgm_ops );

