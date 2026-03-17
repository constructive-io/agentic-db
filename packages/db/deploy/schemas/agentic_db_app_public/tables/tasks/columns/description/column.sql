-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/title/alterations/alt0000001040


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN description text;

