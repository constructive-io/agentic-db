-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/conversation_id/column


ALTER TABLE "agentic_db_app_public".blueprints 
  ADD COLUMN tags citext[];

