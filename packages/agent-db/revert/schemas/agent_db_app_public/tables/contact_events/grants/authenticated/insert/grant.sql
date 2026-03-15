-- Revert: schemas/agent_db_app_public/tables/contact_events/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.contact_events FROM authenticated;


