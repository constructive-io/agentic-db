-- Deploy: schemas/agent_db_app_public/tables/venues/constraints/venues_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".venues 
  ADD CONSTRAINT venues_pkey PRIMARY KEY (id);

