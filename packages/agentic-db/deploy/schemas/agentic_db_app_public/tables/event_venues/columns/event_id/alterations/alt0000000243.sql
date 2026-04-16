-- Deploy: schemas/agentic_db_app_public/tables/event_venues/columns/event_id/alterations/alt0000000243
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/event_venues/columns/event_id/column


ALTER TABLE agentic_db_app_public.event_venues 
  ALTER COLUMN event_id SET NOT NULL;

