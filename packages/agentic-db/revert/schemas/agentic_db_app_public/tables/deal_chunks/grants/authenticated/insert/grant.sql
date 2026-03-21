-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".deal_chunks FROM authenticated;


