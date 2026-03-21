-- Deploy: schemas/agentic_db_app_public/tables/venue_images/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy


GRANT DELETE ON agentic_db_app_public.venue_images TO authenticated;

