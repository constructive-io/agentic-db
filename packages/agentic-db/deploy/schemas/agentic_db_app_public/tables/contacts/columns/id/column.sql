-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000000857


ALTER TABLE "agentic_db_app_public".contacts 
  ADD COLUMN id uuid;

