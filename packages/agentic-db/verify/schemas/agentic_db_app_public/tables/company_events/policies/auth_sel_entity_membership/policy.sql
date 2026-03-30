-- Verify: schemas/agentic_db_app_public/tables/company_events/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.company_events');


