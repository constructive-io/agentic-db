-- Verify: schemas/agentic_db_app_public/tables/hiking_trails/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.hiking_trails');


