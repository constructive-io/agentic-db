-- Revert: schemas/agent_db_app_public/tables/deal_documents/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.deal_documents FROM authenticated;


