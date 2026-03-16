-- Revert: schemas/agent_db_app_public/tables/company_images/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".company_images FROM authenticated;


