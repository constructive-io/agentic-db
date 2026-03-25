-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/updated_at/column


CREATE INDEX runtime_states_chunks_updated_at_idx ON "agentic_db_app_public".runtime_states_chunks ( updated_at );

