-- Deploy: schemas/agent_db_app_public/tables/notes/indexes/notes_last_accessed_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_active_count_idx
-- requires: schemas/agent_db_app_public/tables/notes/columns/last_accessed_at/column


CREATE INDEX notes_last_accessed_at_idx ON agent_db_app_public.notes USING BTREE ( last_accessed_at );

