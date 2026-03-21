-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".session_archive_chunks FROM authenticated;


