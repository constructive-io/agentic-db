-- Deploy: schemas/agentic_db_app_public/tables/tools/indexes/tools_input_schema_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/input_schema/column
-- requires: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_tags_gin_idx


CREATE INDEX tools_input_schema_gin_idx ON "agentic_db_app_public".tools USING GIN ( input_schema );

