-- Revert: schemas/agent_db_app_public/tables/company_links/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".company_links FROM authenticated;


