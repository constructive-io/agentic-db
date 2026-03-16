-- Deploy: schemas/agent_db_app_public/tables/notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".notes 
  ENABLE ROW LEVEL SECURITY;

