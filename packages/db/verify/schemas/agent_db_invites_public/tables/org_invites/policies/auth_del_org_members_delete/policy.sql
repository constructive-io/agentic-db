-- Verify: schemas/agent_db_invites_public/tables/org_invites/policies/auth_del_org_members_delete/policy


SELECT verify_policy('auth_del_org_members_delete', 'agent_db_invites_public.org_invites');


