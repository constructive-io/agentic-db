-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/alterations/alt0000001440


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ALTER COLUMN name DROP NOT NULL;


