-- Verify: schemas/agent_db_app_public/tables/venue_images/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agent_db_app_public.venue_images');


