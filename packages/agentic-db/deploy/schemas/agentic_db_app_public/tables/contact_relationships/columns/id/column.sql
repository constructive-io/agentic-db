-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table


ALTER TABLE "agentic_db_app_public".contact_relationships 
  ADD COLUMN id uuid;

