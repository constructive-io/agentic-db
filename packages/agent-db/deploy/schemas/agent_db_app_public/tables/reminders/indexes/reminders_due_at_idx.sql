-- Deploy: schemas/agent_db_app_public/tables/reminders/indexes/reminders_due_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/indexes/ideas_source_idx
-- requires: schemas/agent_db_app_public/tables/reminders/columns/due_at/column


CREATE INDEX reminders_due_at_idx ON "agent_db_app_public".reminders USING BTREE ( due_at );

