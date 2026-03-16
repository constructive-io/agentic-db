-- Verify: schemas/agent_db_memberships_private/tables/org_memberships_sprt/grants/public/select/grant


SELECT verify_table_grant('agent_db_memberships_private.org_memberships_sprt', 'select', 'public');


