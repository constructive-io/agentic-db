-- Revert: schemas/agentic_db_app_public/tables/documents/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".documents FROM authenticated;


