-- Revert: schemas/agentic_db_app_public/tables/emails/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".emails FROM authenticated;


