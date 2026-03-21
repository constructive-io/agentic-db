-- Revert: schemas/agentic_db_app_public/tables/webhooks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.webhooks FROM authenticated;


