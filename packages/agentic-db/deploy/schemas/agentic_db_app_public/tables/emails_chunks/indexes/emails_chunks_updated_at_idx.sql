-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/updated_at/column


CREATE INDEX emails_chunks_updated_at_idx ON "agentic_db_app_public".emails_chunks ( updated_at );

