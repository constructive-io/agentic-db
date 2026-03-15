-- Deploy: schemas/agent_db_app_public/tables/reminders/indexes/reminders_title_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/title/column
-- requires: schemas/agent_db_app_public/tables/ideas/indexes/ideas_content_gin_idx


CREATE INDEX reminders_title_gin_idx ON "agent_db_app_public".reminders USING gin ( title gin_trgm_ops );

