-- Revert: schemas/agent_db_app_public/tables/attachments/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.attachments FROM authenticated;


