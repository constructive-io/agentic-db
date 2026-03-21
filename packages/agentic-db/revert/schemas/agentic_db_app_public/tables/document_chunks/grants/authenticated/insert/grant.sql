-- Revert: schemas/agentic_db_app_public/tables/document_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.document_chunks FROM authenticated;


