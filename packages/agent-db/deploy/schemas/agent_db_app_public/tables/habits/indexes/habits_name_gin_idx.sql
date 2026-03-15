-- Deploy: schemas/agent_db_app_public/tables/habits/indexes/habits_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/name/column
-- requires: schemas/agent_db_app_public/tables/reminders/indexes/reminders_title_gin_idx


CREATE INDEX habits_name_gin_idx ON "agent_db_app_public".habits USING gin ( name gin_trgm_ops );

