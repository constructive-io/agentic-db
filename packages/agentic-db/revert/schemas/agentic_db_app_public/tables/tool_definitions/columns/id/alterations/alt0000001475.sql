-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/id/alterations/alt0000001475


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ALTER COLUMN id DROP NOT NULL;


