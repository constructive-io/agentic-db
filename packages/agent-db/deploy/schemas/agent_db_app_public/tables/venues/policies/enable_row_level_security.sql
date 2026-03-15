-- Deploy: schemas/agent_db_app_public/tables/venues/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE agent_db_app_public.venues 
  ENABLE ROW LEVEL SECURITY;

