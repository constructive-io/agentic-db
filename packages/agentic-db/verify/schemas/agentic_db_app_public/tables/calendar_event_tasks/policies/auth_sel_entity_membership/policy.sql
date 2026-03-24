-- Verify: schemas/agentic_db_app_public/tables/calendar_event_tasks/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.calendar_event_tasks');


