-- Revert: schemas/agentic_db_app_public/tables/project_contacts/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".project_contacts FROM authenticated;


