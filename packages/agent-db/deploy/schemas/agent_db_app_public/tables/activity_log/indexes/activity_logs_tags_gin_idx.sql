-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/templates/indexes/templates_tags_gin_idx


CREATE INDEX activity_logs_tags_gin_idx ON "agent_db_app_public".activity_log USING GIN ( tags );

