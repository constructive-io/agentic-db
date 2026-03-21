-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/how_we_met/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/relationship_type/column


ALTER TABLE "agentic_db_app_public".contacts 
  ADD COLUMN how_we_met text;

