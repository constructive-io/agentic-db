-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/name/alterations/alt0000006162


ALTER TABLE agentic_db_app_public.codebases 
  ADD COLUMN description text;

