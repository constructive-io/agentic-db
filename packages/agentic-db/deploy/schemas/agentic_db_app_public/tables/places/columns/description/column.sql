-- Deploy: schemas/agentic_db_app_public/tables/places/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/name/alterations/alt0000001615


ALTER TABLE "agentic_db_app_public".places 
  ADD COLUMN description text;

