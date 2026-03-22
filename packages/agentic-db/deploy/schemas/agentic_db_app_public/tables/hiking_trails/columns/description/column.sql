-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/name/alterations/alt0000001641


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ADD COLUMN description text;

