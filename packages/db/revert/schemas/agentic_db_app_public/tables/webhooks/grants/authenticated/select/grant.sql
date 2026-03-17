-- Revert: schemas/agentic_db_app_public/tables/webhooks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".webhooks FROM authenticated;


