-- Revert: schemas/agentic_db_app_public/tables/company_links/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".company_links FROM authenticated;


