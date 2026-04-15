-- Deploy: schemas/agentic_db_app_public/tables/event_venues/columns/id/alterations/alt0000001201
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/columns/id/column


ALTER TABLE "agentic_db_app_public".event_venues 
  ALTER COLUMN id SET NOT NULL;

