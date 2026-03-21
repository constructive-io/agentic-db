-- Deploy: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/tools/indexes/tools_tags_gin_idx


CREATE INDEX activity_logs_tags_gin_idx ON "agentic_db_app_public".activity_log USING GIN ( tags );

