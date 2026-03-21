-- Revert: schemas/agentic_db_app_public/tables/message_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.message_chunks FROM authenticated;


