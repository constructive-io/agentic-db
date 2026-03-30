-- Revert: schemas/agentic_db_app_public/tables/contact_links/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".contact_links FROM authenticated;


