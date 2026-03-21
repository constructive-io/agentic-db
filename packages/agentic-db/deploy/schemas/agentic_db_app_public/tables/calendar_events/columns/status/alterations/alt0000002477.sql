-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/status/alterations/alt0000002477
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/recurrence_rule/column



ALTER TABLE "agentic_db_app_public".calendar_events 
    ALTER COLUMN status SET DEFAULT 'confirmed';

