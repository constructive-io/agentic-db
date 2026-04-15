-- Revert: schemas/agentic_db_invites_public/procedures/submit_org_invite_code/grants/authenticated


REVOKE EXECUTE ON FUNCTION agentic_db_invites_public.submit_org_invite_code FROM authenticated;


