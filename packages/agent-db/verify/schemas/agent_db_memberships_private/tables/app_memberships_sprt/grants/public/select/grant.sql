-- Verify: schemas/agent_db_memberships_private/tables/app_memberships_sprt/grants/public/select/grant


SELECT verify_table_grant('agent_db_memberships_private.app_memberships_sprt', 'select', 'public');


