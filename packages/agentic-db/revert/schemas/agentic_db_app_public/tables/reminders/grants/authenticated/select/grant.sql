-- Revert: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.reminders FROM authenticated;


