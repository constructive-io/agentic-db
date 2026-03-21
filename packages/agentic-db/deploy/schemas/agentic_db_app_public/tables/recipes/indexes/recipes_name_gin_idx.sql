-- Deploy: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/lists/indexes/lists_name_gin_idx


CREATE INDEX recipes_name_gin_idx ON "agentic_db_app_public".recipes USING gin ( name gin_trgm_ops );

