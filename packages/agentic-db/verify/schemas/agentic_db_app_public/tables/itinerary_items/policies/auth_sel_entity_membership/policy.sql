-- Verify: schemas/agentic_db_app_public/tables/itinerary_items/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.itinerary_items');


