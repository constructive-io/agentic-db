-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/alterations/alt0000003633
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.runtime_events 
  ALTER COLUMN payload SET NOT NULL;

