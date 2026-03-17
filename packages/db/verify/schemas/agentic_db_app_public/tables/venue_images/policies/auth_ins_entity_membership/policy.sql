-- Verify: schemas/agentic_db_app_public/tables/venue_images/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.venue_images');


