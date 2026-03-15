-- Deploy: schemas/agent_db_app_public/tables/notes/indexes/notes_active_count_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/active_count/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_last_accessed_at_idx


CREATE INDEX notes_active_count_idx ON "agent_db_app_public".notes USING BTREE ( active_count );

