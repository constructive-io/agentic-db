-- Revert: schemas/agent_db_app_public/tables/files/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.files FROM authenticated;


