-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/title/alterations/alt0000001653


ALTER TABLE "agentic_db_app_public".memories 
  ADD COLUMN content text;

