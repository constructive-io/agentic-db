-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/alterations/alt0000004206
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/policies/auth_del_entity_membership/policy


COMMENT ON TABLE agentic_db_app_public.calendar_event_notes IS E'@behavior +manyToMany';

