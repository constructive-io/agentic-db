-- Revert: schemas/agentic_db_app_public/tables/emails/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".emails FROM authenticated;


