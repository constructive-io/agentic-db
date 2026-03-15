-- Revert: schemas/agent_db_app_public/tables/documents/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.documents FROM authenticated;


