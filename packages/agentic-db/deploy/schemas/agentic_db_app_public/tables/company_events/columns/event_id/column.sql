-- Deploy: schemas/agentic_db_app_public/tables/company_events/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.company_events 
  ADD COLUMN event_id uuid;

