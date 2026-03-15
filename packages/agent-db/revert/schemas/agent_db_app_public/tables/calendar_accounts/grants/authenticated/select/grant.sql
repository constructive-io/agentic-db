-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.calendar_accounts FROM authenticated;


