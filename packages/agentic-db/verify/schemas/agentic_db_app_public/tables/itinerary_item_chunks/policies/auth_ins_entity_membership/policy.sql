-- Verify: schemas/agentic_db_app_public/tables/itinerary_item_chunks/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.itinerary_item_chunks');


