-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_tags_gin_idx


CREATE INDEX tasks_title_gin_idx ON "agentic_db_app_public".tasks USING gin ( title gin_trgm_ops );

