-- Revert: schemas/agentic_db_app_public/tables/notes/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".notes FROM authenticated;


