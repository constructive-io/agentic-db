-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.runtime_events 
  ADD COLUMN payload jsonb;

