-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/provider_account_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".calendars 
  ADD COLUMN provider_account_id text;

