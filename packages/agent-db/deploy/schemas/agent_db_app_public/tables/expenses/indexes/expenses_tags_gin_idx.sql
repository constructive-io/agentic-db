-- Deploy: schemas/agent_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_tags_gin_idx


CREATE INDEX expenses_tags_gin_idx ON "agent_db_app_public".expenses USING GIN ( tags );

