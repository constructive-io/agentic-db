-- Verify: schemas/agentic_db_app_public/tables/trip_hiking_trails/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_app_public.trip_hiking_trails');


