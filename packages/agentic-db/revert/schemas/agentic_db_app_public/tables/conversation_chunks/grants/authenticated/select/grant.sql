-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.conversation_chunks FROM authenticated;


