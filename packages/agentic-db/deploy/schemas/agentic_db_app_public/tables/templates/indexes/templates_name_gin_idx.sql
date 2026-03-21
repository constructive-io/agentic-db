-- Deploy: schemas/agentic_db_app_public/tables/templates/indexes/templates_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_name_gin_idx


CREATE INDEX templates_name_gin_idx ON "agentic_db_app_public".templates USING gin ( name gin_trgm_ops );

