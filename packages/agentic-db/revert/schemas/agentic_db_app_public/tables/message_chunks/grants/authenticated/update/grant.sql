-- Revert: schemas/agentic_db_app_public/tables/message_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.message_chunks FROM authenticated;


