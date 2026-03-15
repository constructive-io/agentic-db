-- Revert: schemas/agent_db_app_public/tables/deal_documents/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".deal_documents FROM authenticated;


