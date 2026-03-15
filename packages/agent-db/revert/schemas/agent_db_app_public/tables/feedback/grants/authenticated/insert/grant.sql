-- Revert: schemas/agent_db_app_public/tables/feedback/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.feedback FROM authenticated;


