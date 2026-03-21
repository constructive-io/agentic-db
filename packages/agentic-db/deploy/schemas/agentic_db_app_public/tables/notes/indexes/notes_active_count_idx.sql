-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/active_count/column
-- requires: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_occurred_at_idx


CREATE INDEX notes_active_count_idx ON agentic_db_app_public.notes USING BTREE ( active_count );

