-- Deploy: schemas/agentic_db_app_public/tables/venue_images/constraints/venue_images_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.venue_images 
  ADD CONSTRAINT venue_images_pkey PRIMARY KEY (id);

