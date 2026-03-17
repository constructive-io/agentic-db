-- Revert: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".contacts FROM authenticated;


