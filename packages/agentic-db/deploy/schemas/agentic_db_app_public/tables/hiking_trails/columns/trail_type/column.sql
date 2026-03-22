-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/trail_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/estimated_time_hours/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ADD COLUMN trail_type text;

