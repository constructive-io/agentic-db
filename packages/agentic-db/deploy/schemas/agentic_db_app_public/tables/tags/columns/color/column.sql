-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/color/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/name/alterations/alt0000003766


ALTER TABLE agentic_db_app_public.tags 
  ADD COLUMN color text;

