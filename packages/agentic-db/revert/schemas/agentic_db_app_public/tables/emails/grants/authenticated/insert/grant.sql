-- Revert: schemas/agentic_db_app_public/tables/emails/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.emails FROM authenticated;


