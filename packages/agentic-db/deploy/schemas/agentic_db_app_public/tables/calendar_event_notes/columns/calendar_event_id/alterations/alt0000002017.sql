-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/calendar_event_id/alterations/alt0000002017
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/calendar_event_id/column
-- requires: schemas/agentic_db_app_public/tables/email_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".calendar_event_notes 
  ALTER COLUMN calendar_event_id SET NOT NULL;

