-- Revert: schemas/agent_db_app_public/tables/feedback/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.feedback FROM authenticated;


