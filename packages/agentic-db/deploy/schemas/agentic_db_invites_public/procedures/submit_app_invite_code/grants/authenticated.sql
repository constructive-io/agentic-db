-- Deploy: schemas/agentic_db_invites_public/procedures/submit_app_invite_code/grants/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/procedures/submit_app_invite_code/procedure


GRANT EXECUTE ON FUNCTION agentic_db_invites_public.submit_app_invite_code TO authenticated;

