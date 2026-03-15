-- Revert: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.blueprints FROM authenticated;


