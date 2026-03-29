-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  ENABLE ROW LEVEL SECURITY;

