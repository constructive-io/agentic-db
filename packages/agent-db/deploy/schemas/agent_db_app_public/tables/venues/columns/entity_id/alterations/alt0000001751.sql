-- Deploy: schemas/agent_db_app_public/tables/venues/columns/entity_id/alterations/alt0000001751
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".venues 
  ALTER COLUMN entity_id SET NOT NULL;

