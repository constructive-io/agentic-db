-- Deploy: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/goals/indexes/goals_title_gin_idx


CREATE INDEX blueprints_title_gin_idx ON "agentic_db_app_public".blueprints USING gin ( title gin_trgm_ops );

