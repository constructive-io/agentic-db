-- Deploy: schemas/agentic_db_app_public/tables/venue_images/constraints/venue_images_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table


ALTER TABLE "agentic_db_app_public".venue_images 
  ADD CONSTRAINT venue_images_pkey PRIMARY KEY (id);

