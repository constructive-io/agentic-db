-- Deploy: schemas/agentic_db_app_public/tables/company_events/columns/event_id/alterations/alt0000015400
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/event_id/column


ALTER TABLE agentic_db_app_public.company_events 
  ALTER COLUMN event_id SET NOT NULL;

