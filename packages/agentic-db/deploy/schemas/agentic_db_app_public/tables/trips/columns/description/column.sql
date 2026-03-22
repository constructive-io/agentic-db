-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/name/alterations/alt0000001601


ALTER TABLE "agentic_db_app_public".trips 
  ADD COLUMN description text;

