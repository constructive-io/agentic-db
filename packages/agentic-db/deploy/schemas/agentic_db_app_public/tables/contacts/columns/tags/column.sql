-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/location_geo/column


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN tags citext[];

