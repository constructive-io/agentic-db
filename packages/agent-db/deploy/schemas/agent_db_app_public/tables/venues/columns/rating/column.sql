-- Deploy: schemas/agent_db_app_public/tables/venues/columns/rating/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/google_place_id/column


ALTER TABLE "agent_db_app_public".venues 
  ADD COLUMN rating numeric;

