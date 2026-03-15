-- Deploy: schemas/agent_db_app_public/tables/venues/columns/id/alterations/alt0000000897
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/id/column
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE agent_db_app_public.venues 
  ALTER COLUMN id SET NOT NULL;

