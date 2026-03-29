-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.messages_chunks FROM authenticated;


