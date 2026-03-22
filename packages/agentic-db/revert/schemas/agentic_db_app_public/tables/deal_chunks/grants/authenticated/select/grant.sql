-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".deal_chunks FROM authenticated;


