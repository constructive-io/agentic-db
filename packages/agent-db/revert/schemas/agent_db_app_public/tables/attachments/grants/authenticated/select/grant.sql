-- Revert: schemas/agent_db_app_public/tables/attachments/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.attachments FROM authenticated;


