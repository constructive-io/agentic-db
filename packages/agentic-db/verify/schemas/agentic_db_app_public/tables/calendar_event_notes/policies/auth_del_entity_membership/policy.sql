-- Verify: schemas/agentic_db_app_public/tables/calendar_event_notes/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_app_public.calendar_event_notes');


