-- Deploy: schemas/agent_db_app_public/tables/venues/alterations/alt0000001748
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".venues 
  DISABLE ROW LEVEL SECURITY;

